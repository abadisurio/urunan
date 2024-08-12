import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_service.freezed.dart';
part 'subscription_service.g.dart';

@freezed
class SubscriptionService with _$SubscriptionService {
  @JsonSerializable(explicitToJson: true)
  const factory SubscriptionService({
    required String id,
    required DateTime createdAt,
    required SubscriptionServiceProvider provider,
    SubscriptionServiceType? type,
    String? name,
    String? posterUrl,
    String? logoUrl,
    String? brandColorHex,
  }) = _SubscriptionService;

  factory SubscriptionService.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionServiceFromJson(json);
}

enum SubscriptionServiceType {
  music,
  movie,
}

enum SubscriptionServiceProvider {
  netflix,
  youtube,
  canva,
  google,
  drive,
}
