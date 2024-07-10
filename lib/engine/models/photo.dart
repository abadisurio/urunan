import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/models/helper.dart';

part 'photo.freezed.dart';
part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  // ignore: invalid_annotation_target
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  factory Photo({
    required String id,
    required String memberId,
    required String albumId,
    required String name,
    required String url,
    // @Default(DateTime(2024))
    @JsonKey(defaultValue: getDefaultDateTime, fromJson: fromDateTimeJson)
    required DateTime createdAt,
    double? height,
    double? width,
    double? alt,
    // @Default(DateTime(2024))
    // @JsonKey(defaultValue: getDefaultDateTime, fromJson: fromDateTimeJson)
    // DateTime? modifiedAt,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
