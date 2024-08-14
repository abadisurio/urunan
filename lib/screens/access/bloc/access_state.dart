part of 'access_bloc.dart';

@freezed
class AccessState with _$AccessState {
  const factory AccessState({
    List<ServiceAccess>? serviceAccess,
    String? errorMessage,
  }) = _AccessState;
}
