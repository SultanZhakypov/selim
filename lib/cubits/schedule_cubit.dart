import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../features/home/data/models/main_info/main_info_model.dart';
import '../features/home/domain/usecases/home_usecases.dart';

@injectable
class ScheduleCubit extends Cubit<ScheduleState> {
  final HomeUsecaseImpl _homeUseCase;
  ScheduleCubit(this._homeUseCase) : super(ScheduleInitial());

  void getSchedule() async {
    emit(ScheduleLoading());
    try {
      final result = await _homeUseCase.getSchedule();

      emit(ScheduleSuccess(result));
    } catch (e) {
      emit(ScheduleError(error: e.toString()));
    }
  }
}

abstract class ScheduleState extends Equatable {
  const ScheduleState();
  @override
  List<Object?> get props => [];
}

class ScheduleInitial extends ScheduleState {}

class ScheduleLoading extends ScheduleState {}

class ScheduleSuccess extends ScheduleState {
  const ScheduleSuccess(this.schedule);
  final List<Schedule> schedule;

  @override
  List<Object?> get props => [schedule];
}

class ScheduleError extends ScheduleState {
  final String error;
  const ScheduleError({
    required this.error,
  });
}
