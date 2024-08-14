import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:urunan/engine/engine.dart';

part 'access_detail_event.dart';
part 'access_detail_state.dart';
part 'access_detail_bloc.freezed.dart';

const _isDebugWithSimulator = true;

class AccessDetailBloc extends Bloc<AccessDetailEvent, AccessDetailState> {
  AccessDetailBloc({
    required ServiceAccessRepository serviceAccessRepository,
  })  : _serviceAccessRepository = serviceAccessRepository,
        super(const AccessDetailState()) {
    on<InitiateLocalAuth>(_onInitiateLocalAuth);
    on<LoadAccessDetail>(_onLoadAccessDetail);
    on<RequestLocalAuth>(_onRequestLocalAuth);
  }

  late final String _accessId;

  final ServiceAccessRepository _serviceAccessRepository;

  final auth = LocalAuthentication();

  Future<void> _onLoadAccessDetail(
    LoadAccessDetail event,
    Emitter<AccessDetailState> emit,
  ) async {
    try {
      _accessId = event.accessId;
      final accesses = await _serviceAccessRepository.getServiceAccessById(
        accessId: _accessId,
      );
      emit(state.copyWith(serviceAccessDetail: accesses));
    } catch (e) {
      emit(state.copyWith(errorMessage: '$e'));
    }
    //
  }

  Future<void> _onInitiateLocalAuth(
    InitiateLocalAuth event,
    Emitter<AccessDetailState> emit,
  ) async {
    if (_isDebugWithSimulator) {
      emit(state.copyWith(canLocalAuthenticate: true));
      return;
    }
    try {
      final canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
      final canAuthenticate =
          canAuthenticateWithBiometrics || await auth.isDeviceSupported();

      emit(state.copyWith(canLocalAuthenticate: canAuthenticate));
    } catch (e) {
      emit(state.copyWith(errorMessage: '$e'));
    }
    //
  }

  Future<void> _onRequestLocalAuth(
    RequestLocalAuth event,
    Emitter<AccessDetailState> emit,
  ) async {
    if (_isDebugWithSimulator) {
      emit(state.copyWith(isLocalAuthenticated: true));
      return;
    }
    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to show account balance',
        options: const AuthenticationOptions(biometricOnly: true),
      );
      emit(
        state.copyWith(
          isLocalAuthenticated: didAuthenticate,
        ),
      );
    } on PlatformException {
      log('debug PlatformException');
    } catch (e) {
      emit(state.copyWith(errorMessage: '$e'));
    }
  }
}
