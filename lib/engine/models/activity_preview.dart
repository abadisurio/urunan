import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/models/models.dart';

part 'activity_preview.freezed.dart';
part 'activity_preview.g.dart';

@freezed
class ActivityPreview with _$ActivityPreview {
  @JsonSerializable(explicitToJson: true)
  const factory ActivityPreview({
    required String id,
    required DateTime createdAt,
    required String creatorId,
    required ActivityType type,
    Pilot? creator,
    List<ServiceSubscription>? service,
    Entertainment? art,
    String? caption,
    String? mediaUrl,
  }) = _ActivityPreview;

  factory ActivityPreview.fromJson(Map<String, dynamic> json) =>
      _$ActivityPreviewFromJson(json);
}

enum ActivityType {
  post,
  subscription,
}
