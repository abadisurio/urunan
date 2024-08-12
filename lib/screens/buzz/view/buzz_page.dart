import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BuzzPage extends StatelessWidget {
  const BuzzPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BuzzView();
  }
}

class _BuzzView extends StatelessWidget {
  const _BuzzView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buzz'),
        elevation: 0,
        forceMaterialTransparency: true,
      ),
    );
  }
}
