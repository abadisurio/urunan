import 'package:freezed_annotation/freezed_annotation.dart';

part 'entertainment.freezed.dart';
part 'entertainment.g.dart';

@freezed
class Entertainment with _$Entertainment {
  @JsonSerializable(explicitToJson: true)
  const factory Entertainment({
    required String id,
    required DateTime createdAt,
    required EntertainmentType artType,
    String? name,
    String? title,
    String? artist,
    String? posterUrl,
    String? thumbnailUrl,
    String? thumbnailColorHex,
  }) = _Entertainment;

  factory Entertainment.fromJson(Map<String, dynamic> json) =>
      _$EntertainmentFromJson(json);
}

enum EntertainmentType {
  music,
  movie,
}
