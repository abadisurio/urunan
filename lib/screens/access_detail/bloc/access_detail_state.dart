part of 'access_detail_bloc.dart';

@freezed
class AccessDetailState with _$AccessDetailState {
  const factory AccessDetailState({
    ServiceAccess? serviceAccessDetail,
    @Default(true) bool canLocalAuthenticate,
    @Default(true) bool isLocalAuthenticated,
    String? errorMessage,
  }) = _AccessDetailState;
}
