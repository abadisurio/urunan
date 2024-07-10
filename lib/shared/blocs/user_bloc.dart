import 'dart:async';
import 'dart:convert';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:urunan/engine/engine.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';
part 'user_bloc.g.dart';

class UserBloc extends HydratedBloc<UserEvent, UserState> {
  UserBloc({
    required UserRepository repository,
    required FirebaseAuth firebaseAuth,
  })  : _firebaseAuth = firebaseAuth,
        _userRepository = repository,
        super(const UserState()) {
    on<UserInitialize>(_onUserInitialize);
    on<SignInWithGoogle>(_onSignInWithGoogle);
    on<RefreshUrunanUser>(_onRefreshUrunanUser);
    on<SignOut>(_onSignOut);
  }

  static const _keyStoredGoogleUser = 'stored_google_user';
  static const _keyStoredUrunanUser = 'stored_urunan_user';

  static const _storage = FlutterSecureStorage();
  static const _secureStorageAndroidOptions = AndroidOptions(
    encryptedSharedPreferences: true,
  );

  // FirebaseFirestore _firebaseFirestore;
  OAuthCredential? _currentCredential;
  Pilot? _remoteUser;
  // Pilot? _localUser;
  Pilot? _currentUrunanUser;
  User? _curentUser;
  // late DocumentReference _userDoc;
  // ignore: unused_field
  late final UserRepository _userRepository;
  final FirebaseAuth _firebaseAuth;
  final _googleSignIn = GoogleSignIn();

  Future<void> _onUserInitialize(
    UserInitialize event,
    Emitter<UserState> emit,
  ) async {
    await _initializeLocalCredential();

    if (_currentCredential != null) {
      await _initializeUserData();
      emit(
        state.copyWith(
          authState: AuthState.signedIn,
          user: _currentUrunanUser,
        ),
      );
    } else {
      emit(state.copyWith(authState: AuthState.signedOut));
    }
  }

  Future<void> _initializeLocalCredential() async {
    final credential = await _storage.read(
      key: _keyStoredGoogleUser,
      aOptions: _secureStorageAndroidOptions,
    );
    if (credential != null) {
      final credentialJson = json.decode(credential) as Map;
      final providerId = credentialJson['providerId'] as String?;
      final signInMethod = credentialJson['signInMethod'] as String?;
      final accessToken = credentialJson['accessToken'] as String?;
      if (providerId != null && signInMethod != null && accessToken != null) {
        _currentCredential = OAuthCredential(
          providerId: providerId,
          signInMethod: signInMethod,
          accessToken: accessToken,
        );
        // add(const UserInitialize());
      }
    }

    // if (currentUser == null) {
    // }
  }

  Future<void> _initializeUserData() async {
    _curentUser = _firebaseAuth.currentUser;
    // _userDoc = _userCol.doc(_curentUser!.uid);

    // _localUser = await _readFromStorage();
    _remoteUser = await _readFromRemote();

    //

    final user = _remoteUser ?? state.user;
    if (state.user != null && _remoteUser == null) {
      await _createNewUserToFirestore();
    }
    if (state.user == null && _remoteUser != null) {
      await _readFromRemote();
    }
    _currentUrunanUser = user ?? await _createNewUserToFirestore();

    // add(const RefreshUrunanUser());
  }

  Future<void> _signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();

    // Obtain the auth details from the request
    final googleAuth = await googleUser?.authentication;

    if (googleAuth != null) {
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _storage.write(
        key: _keyStoredGoogleUser,
        value: json.encode(credential.asMap()),
        aOptions: _secureStorageAndroidOptions,
      );
      await _firebaseAuth.signInWithCredential(credential);
    }
  }

  Future<void> _onSignInWithGoogle(
    SignInWithGoogle event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(authState: AuthState.loading));

    await _signInWithGoogle();
    await _initializeUserData();

    emit(
      state.copyWith(
        authState: AuthState.signedIn,
        user: _currentUrunanUser,
      ),
    );
    //
  }

  Future<Pilot> _readFromRemote() async {
    final remoteUser = await _userRepository.getDetail(id: 'id');
    return remoteUser;
  }

  Future<void> _writeToRemote(Pilot urunanUser) async {
    // await _userDoc.set(
    //   urunanUser.toJson()..remove('id'),
    //   SetOptions(merge: true),
    // );
  }

  // Future<Pilot?> _readFromStorage() async {
  //   final urunanUserString = await _storage.read(
  //     key: _keyStoredUrunanUser,
  //     aOptions: _secureStorageAndroidOptions,
  //   );
  //   if (urunanUserString != null) {
  //     return Pilot.fromJson(
  //       json.decode(urunanUserString) as Map<String, dynamic>,
  //     );
  //   }
  //   return null;
  // }

  Future<Pilot> _createNewUserToFirestore() async {
    final id = _firebaseAuth.currentUser!.uid;
    final newPilot = Pilot(
      id: id,
      createdAt: DateTime.now(),
      username: id,
      photoUrl: _firebaseAuth.currentUser?.photoURL,
    );
    await _writeToRemote(newPilot);
    return newPilot;
  }

  Future<void> _onRefreshUrunanUser(
    RefreshUrunanUser event,
    Emitter<UserState> emit,
  ) async {
    // final fcmToken = await FirebaseMessaging.instance.getToken();
    if (event.newUrunanUser != null) {
      _currentUrunanUser = event.newUrunanUser;
    }
    if (_curentUser != null && _currentUrunanUser != null) {
      _currentUrunanUser = _currentUrunanUser!.copyWith(
        // fcmToken: fcmToken,
        photoUrl: _curentUser?.photoURL,
        modifiedAt: DateTime.now(),
      );

      unawaited(_writeToRemote(_currentUrunanUser!));

      emit(state.copyWith(user: _currentUrunanUser));
    }
  }

  Future<void> _onSignOut(
    SignOut event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(authState: AuthState.loading));
    await _googleSignIn.signOut();

    await _storage.delete(
      key: _keyStoredUrunanUser,
      aOptions: _secureStorageAndroidOptions,
    );
    await _storage.delete(
      key: _keyStoredGoogleUser,
      aOptions: _secureStorageAndroidOptions,
    );
    await _firebaseAuth.signOut();
    emit(state.copyWith(authState: AuthState.signedOut));
  }

  @override
  UserState? fromJson(Map<String, dynamic> json) {
    return UserState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(UserState state) {
    return state.toJson();
  }
}
