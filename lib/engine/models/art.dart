import 'package:freezed_annotation/freezed_annotation.dart';

part 'art.freezed.dart';
part 'art.g.dart';

@freezed
class Art with _$Art {
  @JsonSerializable(explicitToJson: true)
  const factory Art({
    required String id,
    required DateTime createdAt,
    required ArtType artType,
    String? name,
    String? title,
    String? artist,
    String? thumbnailUrl,
    String? thumbnailColorHex,
  }) = _Art;

  factory Art.fromJson(Map<String, dynamic> json) => _$ArtFromJson(json);
}

enum ArtType {
  music,
  movie,
}
