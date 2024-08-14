import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/models/models.dart';

part 'service_access.freezed.dart';
part 'service_access.g.dart';

@freezed
class ServiceAccess with _$ServiceAccess {
  @JsonSerializable(explicitToJson: true)
  const factory ServiceAccess({
    required String id,
    required DateTime createdAt,
    required ServiceSubscription service,
    required String email,
    required String password,
  }) = _ServiceAccess;

  factory ServiceAccess.fromJson(Map<String, dynamic> json) =>
      _$ServiceAccessFromJson(json);
}
