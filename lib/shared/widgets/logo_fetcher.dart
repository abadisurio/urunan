import 'package:flutter/material.dart';
import 'package:urunan/engine/engine.dart';

Widget logoFetcher({required ServiceSubscriptionProvider type, double? size}) {
  switch (type) {
    case ServiceSubscriptionProvider.netflix:
      return Icon(Icons.movie, size: size);
    case ServiceSubscriptionProvider.youtube:
      return Icon(Icons.video_collection, size: size);
    case ServiceSubscriptionProvider.canva:
      return Icon(Icons.image, size: size);
    case ServiceSubscriptionProvider.google:
      return FlutterLogo(size: size);
    case ServiceSubscriptionProvider.drive:
      return Icon(Icons.drive_folder_upload_sharp, size: size);
  }
}
