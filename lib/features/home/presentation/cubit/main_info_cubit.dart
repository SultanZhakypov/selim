import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:selim/features/home/domain/entities/maininfo_entity.dart';

import '../../domain/usecases/home_usecases.dart';

@injectable
class MainInfoCubit extends Cubit<MainInfoState> {
  final HomeUsecaseImpl _homeUseCase;
  MainInfoCubit(this._homeUseCase) : super(MainInfoInitial());

  void getMainInfo() async {
    emit(MainInfoLoading());
    try {
      final result = await _homeUseCase.getMainInfo();

      emit(MainInfoSuccess(result));
    } catch (e) {
      emit(MainInfoError(error: e.toString()));
    }
  }
}

abstract class MainInfoState extends Equatable {
  const MainInfoState();
  @override
  List<Object?> get props => [];
}

class MainInfoInitial extends MainInfoState {}

class MainInfoLoading extends MainInfoState {}

class MainInfoSuccess extends MainInfoState {
  const MainInfoSuccess(this.mainInfo);
  final MainInfoEntity mainInfo;

  @override
  List<Object?> get props => [mainInfo];
}

class MainInfoError extends MainInfoState {
  final String error;
  const MainInfoError({
    required this.error,
  });
}
