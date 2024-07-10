part of 'user_bloc.dart';

class UserEvent {
  const UserEvent();
}

class UserInitialize extends UserEvent {
  const UserInitialize();
}

class SignInWithGoogle extends UserEvent {
  const SignInWithGoogle();
}

class SignInWithPassword extends UserEvent {
  const SignInWithPassword();
}

class RefreshUrunanUser extends UserEvent {
  const RefreshUrunanUser({this.newUrunanUser});

  final Pilot? newUrunanUser;
}

class SignOut extends UserEvent {
  const SignOut();
}
