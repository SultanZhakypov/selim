import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/news/domain/entities/advantage_entity.dart';
import 'package:selim/features/news/domain/usecases/news_usecases.dart';

@injectable
class AdvantageOrServiceCubit extends Cubit<AdvantageOrServiceState> {
  final NewsUseCaseImpl _newsUseCase;
  AdvantageOrServiceCubit(this._newsUseCase) : super(AdvantageInitial());

  void getAdvantagesAndService() async {
    emit(AdvantageLoading());
    try {
      final advantage = await _newsUseCase.getAdvanteges();
      final services = await _newsUseCase.getServices();

      emit(AdvantageSuccess(advantage,services));
    } catch (e) {
      emit(AdvantageError(error: e.toString()));
    }
  }
}

abstract class AdvantageOrServiceState extends Equatable {
  const AdvantageOrServiceState();
  @override
  List<Object?> get props => [];
}

class AdvantageInitial extends AdvantageOrServiceState {}

class AdvantageLoading extends AdvantageOrServiceState {}

class AdvantageSuccess extends AdvantageOrServiceState {
  const AdvantageSuccess(this.advantages, this.services);
  final List<AdvantageOrServiceEntity> advantages;
  final List<AdvantageOrServiceEntity> services;

  @override
  List<Object?> get props => [advantages, services];
}

class AdvantageError extends AdvantageOrServiceState {
  final String error;
  const AdvantageError({required this.error});
}
