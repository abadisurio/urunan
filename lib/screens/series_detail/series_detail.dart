import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SeriesDetailPage extends StatelessWidget {
  const SeriesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SeriesDetailView();
  }
}

class _SeriesDetailView extends StatelessWidget {
  const _SeriesDetailView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Series'),
      ),
    );
  }
}
