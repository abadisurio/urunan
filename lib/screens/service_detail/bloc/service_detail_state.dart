part of 'service_detail_bloc.dart';

@freezed
class ServiceDetailState with _$ServiceDetailState {
  const factory ServiceDetailState({
    required ServiceSubscription service,
  }) = _ServiceDetailState;

  @override
  String toString() {
    return '''ServiceDetailState(service: $service)''';
  }
}
