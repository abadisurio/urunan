import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/models/models.dart';

part 'activity_detail.freezed.dart';
part 'activity_detail.g.dart';

@freezed
class ActivityDetail with _$ActivityDetail {
  @JsonSerializable(explicitToJson: true)
  const factory ActivityDetail({
    required String id,
    required DateTime createdAt,
    required String creatorId,
    Pilot? creator,
    Entertainment? entertainment,
    String? caption,
    String? mediaUrl,
  }) = _ActivityDetail;

  factory ActivityDetail.fromJson(Map<String, dynamic> json) =>
      _$ActivityDetailFromJson(json);
}
