import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:urunan/engine/engine.dart';

part 'service_detail_event.dart';
part 'service_detail_state.dart';
part 'service_detail_bloc.freezed.dart';

class ServiceDetailBloc extends Bloc<ServiceDetailEvent, ServiceDetailState> {
  ServiceDetailBloc({
    required ServiceSubscription subscriptionService,
  })  : _subscriptionService = subscriptionService,
        super(ServiceDetailState(service: subscriptionService)) {
    on<LoadServiceData>(_onLoadServiceData);
  }

  // ignore: unused_field
  final ServiceSubscription _subscriptionService;

  Future<void> _onLoadServiceData(
    LoadServiceData event,
    Emitter<ServiceDetailState> emit,
  ) async {
    // final activities = await _activityRepository.getLast20Activity();
    // emit(
    //   state.copyWith(activities: activities),
    // );
  }
}
