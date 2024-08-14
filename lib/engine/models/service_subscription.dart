import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_subscription.freezed.dart';
part 'service_subscription.g.dart';

@freezed
class ServiceSubscription with _$ServiceSubscription {
  @JsonSerializable(explicitToJson: true)
  const factory ServiceSubscription({
    required String id,
    required DateTime createdAt,
    required ServiceSubscriptionProvider provider,
    ServiceSubscriptionType? type,
    String? name,
    String? posterUrl,
    String? logoUrl,
    String? brandColorHex,
  }) = _ServiceSubscription;

  factory ServiceSubscription.fromJson(Map<String, dynamic> json) =>
      _$ServiceSubscriptionFromJson(json);
}

enum ServiceSubscriptionType {
  music,
  movie,
}

enum ServiceSubscriptionProvider {
  netflix,
  youtube,
  canva,
  google,
  drive,
}
