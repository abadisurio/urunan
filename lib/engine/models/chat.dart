import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/models/models.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  // ignore: invalid_annotation_target
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory Chat({
    required String id,
    required String username,
    required String data,
    // @Default(DateTime(2024))
    @JsonKey(defaultValue: getDefaultDateTime, fromJson: fromDateTimeJson)
    required DateTime createdAt,
    // @Default(DateTime(2024))
    @JsonKey(defaultValue: getDefaultDateTime, fromJson: fromDateTimeJson)
    DateTime? modifiedAt,
    // List<Catalog>? catalogs,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}
