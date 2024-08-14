import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/screens/service_detail/service_detail.dart';

@RoutePage()
class ServiceDetailPage extends StatelessWidget {
  const ServiceDetailPage({
    required this.subscriptionService,
    super.key,
  });

  final ServiceSubscription subscriptionService;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServiceDetailBloc(
        subscriptionService: subscriptionService,
      ),
      child: const _ServiceDetailView(),
    );
  }
}

class _ServiceDetailView extends StatelessWidget {
  const _ServiceDetailView();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
