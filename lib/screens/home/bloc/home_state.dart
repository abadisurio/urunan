part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  @JsonSerializable(explicitToJson: true)
  const factory HomeState({
    List<ActivityPreview>? activities,
    List<ActivityPreview>? activeSubscriptions,
  }) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);

  @override
  String toString() {
    return '''HomeState(activities: ${activities?.length}, activeSubscriptions: ${activeSubscriptions?.length})''';
  }
}
