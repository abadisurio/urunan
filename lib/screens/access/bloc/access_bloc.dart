import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/engine.dart';

part 'access_event.dart';
part 'access_state.dart';
part 'access_bloc.freezed.dart';

class AccessBloc extends Bloc<AccessEvent, AccessState> {
  AccessBloc({
    required ServiceAccessRepository serviceAccessRepository,
  })  : _serviceAccessRepository = serviceAccessRepository,
        super(const AccessState()) {
    on<LoadAccesses>(_onLoadAccesses);
  }

  final ServiceAccessRepository _serviceAccessRepository;

  Future<void> _onLoadAccesses(
    LoadAccesses event,
    Emitter<AccessState> emit,
  ) async {
    try {
      final accesses = await _serviceAccessRepository.getLast20ServiceAccess();
      emit(state.copyWith(serviceAccess: accesses));
    } catch (e) {
      emit(state.copyWith(errorMessage: '$e'));
    }
    //
  }
}
