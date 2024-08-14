part of 'access_detail_bloc.dart';

class AccessDetailEvent {
  const AccessDetailEvent();
}

class LoadAccessDetail extends AccessDetailEvent {
  const LoadAccessDetail({
    required this.accessId,
    this.access,
  });

  final String accessId;
  final ServiceAccess? access;
}

class InitiateLocalAuth extends AccessDetailEvent {
  const InitiateLocalAuth();
}

class RequestLocalAuth extends AccessDetailEvent {
  const RequestLocalAuth();
}
