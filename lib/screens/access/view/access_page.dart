import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AccessView();
  }
}

class _AccessView extends StatelessWidget {
  const _AccessView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Access'),
        elevation: 0,
        forceMaterialTransparency: true,
      ),
    );
  }
}
