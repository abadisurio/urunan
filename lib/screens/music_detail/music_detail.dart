import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MusicDetailPage extends StatelessWidget {
  const MusicDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _MusicDetailView();
  }
}

class _MusicDetailView extends StatelessWidget {
  const _MusicDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music'),
      ),
    );
  }
}
