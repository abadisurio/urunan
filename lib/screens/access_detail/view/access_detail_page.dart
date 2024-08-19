import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunan/app/view/app.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/screens/access_detail/access_detail.dart';

@RoutePage()
class AccessDetailPage extends StatelessWidget {
  const AccessDetailPage({
    required this.accessId,
    required this.access,
    super.key,
  });

  final String accessId;
  final ServiceAccess access;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccessDetailBloc(
        serviceAccessRepository: context.read(),
      )
        ..add(
          LoadAccessDetail(
            accessId: accessId,
            access: access,
          ),
        )
        ..add(const InitiateLocalAuth()),
      child: const _AccessView(),
    );
  }
}

class _AccessView extends StatelessWidget {
  const _AccessView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Access Detail'),
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       context.read<AccessDetailBloc>().add(const RequestLocalAuth());
      //     },
      //     child: const Text('Auth'),
      //   ),
      // ),
      body: BlocBuilder<AccessDetailBloc, AccessDetailState>(
        buildWhen: (previous, current) =>
            previous.serviceAccessDetail != current.serviceAccessDetail,
        builder: (context, state) {
          final access = state.serviceAccessDetail;
          return ListView(
            children: [
              Text('${access?.service.name}'),
              Text('${access?.service.createdAt}'),
              // Text('${access?.email}'),
              Text(
                'abadisurio@gmail.com',
                style: context.textTheme.titleMedium,
              ),
              Text('${access?.password}'),
            ],
          );
        },
      ),
      // body: ,
    );
  }
}
