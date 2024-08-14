import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunan/app/view/app.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/screens/access/access.dart';
import 'package:urunan/shared/shared.dart';

@RoutePage()
class AccessPage extends StatelessWidget {
  const AccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccessBloc(
        serviceAccessRepository: context.read(),
      )..add(const LoadAccesses()),
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
        title: const Text('My Accesses'),
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      body: const _AccessList(),
    );
  }
}

class _AccessList extends StatelessWidget {
  const _AccessList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccessBloc, AccessState>(
      buildWhen: (previous, current) {
        return previous.serviceAccess != current.serviceAccess;
      },
      builder: (context, state) {
        final serviceAccess = state.serviceAccess;
        if (serviceAccess == null) {
          return const Center(child: CircularProgressIndicator());
        }

        return GridView.builder(
          padding: const EdgeInsets.all(8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemCount: serviceAccess.length + 1,
          itemBuilder: (context, index) {
            if (index == serviceAccess.length) {
              return const _SubscribeNowButton();
            }
            final accessItem = serviceAccess[index];
            return _AccessItem(accessItem: accessItem);
          },
        );
      },
    );
  }
}

class _AccessItem extends StatelessWidget {
  const _AccessItem({required this.accessItem});

  final ServiceAccess accessItem;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey.shade900,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  logoFetcher(
                    type: accessItem.service.provider,
                    size: 48,
                  ),
                  Text(
                    '${accessItem.service.name}',
                    style: context.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Durations.extralong4,
                      curve: Curves.easeInOutCirc,
                      builder: (_, value, __) => CircularProgressIndicator(
                        value: value,
                        strokeWidth: 2,
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                    Text(
                      '48',
                      style: context.textTheme.titleSmall,
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Durations.extralong4,
                      curve: Curves.easeInOutCirc,
                      builder: (_, value, __) => CircularProgressIndicator(
                        value: value,
                        strokeWidth: 2,
                        strokeCap: StrokeCap.round,
                      ),
                    ),
                    Text(
                      '48',
                      style: context.textTheme.titleSmall,
                    ),
                  ],
                ),
                const Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Icon(Icons.warning_rounded),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SubscribeNowButton extends StatelessWidget {
  const _SubscribeNowButton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey.shade900, width: 5),
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        // backgroundColor: Colors.grey.shade900,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.add_circle_outline_sharp,
            size: 48,
          ),
          Text(
            'Langganan Sekarang',
            style: context.textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}

// return ListView.builder(
//   itemCount: serviceAccess.length,
//   itemBuilder: (context, index) {
//     final accessItem = serviceAccess[index];
//     // return ListTile(
//     //   leading: Container(
//     //     padding: const EdgeInsets.all(10),
//     //     decoration: BoxDecoration(
//     //       color: Colors.red.shade900,
//     //       borderRadius: BorderRadius.circular(8),
//     //     ),
//     //     child: logoFetcher(accessItem.service.provider),
//     //   ),
//     //   title: Text('${accessItem.service.name}'),
//     //   subtitle: Text(
//     //     '${accessItem.createdAt}',
//     //     style: context.textTheme.bodySmall?.copyWith(
//     //       color: Colors.grey,
//     //     ),
//     //   ),
//     //   onTap: () {},
//     // );
//     // return Padding(
//     //   padding: const EdgeInsets.symmetric(vertical: 8),
//     //   child: Row(
//     //     children: [
//     //       Expanded(
//     //         child: Padding(
//     //           padding: const EdgeInsets.all(8),
//     //           child: Text(
//     //             '${accessItem.service.name}',
//     //             textAlign: TextAlign.end,
//     //             style: context.textTheme.titleLarge,
//     //           ),
//     //         ),
//     //       ),
//     //       Expanded(
//     //         child: Container(
//     //           width: double.infinity,
//     //           height: context.screenWidth / 3,
//     //           padding: const EdgeInsets.all(20),
//     //           decoration: BoxDecoration(
//     //             borderRadius: const BorderRadius.only(
//     //               topLeft: Radius.circular(24),
//     //               bottomLeft: Radius.circular(24),
//     //             ),
//     //             color: Colors.indigo.shade900,
//     //           ),
//     //           child: Column(
//     //             crossAxisAlignment: CrossAxisAlignment.start,
//     //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     //             children: [
//     //               logoFetcher(
//     //                 type: accessItem.service.provider,
//     //                 size: 48,
//     //               ),
//     //               Text(
//     //                 'AKTIF',
//     //                 style: context.textTheme.titleSmall,
//     //               ),
//     //             ],
//     //           ),
//     //         ),
//     //       )
//     //     ],
//     //   ),
//     // );
//   },
// );
