import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/home/domain/entities/maininfo_entity.dart';
import 'package:selim/features/home/domain/usecases/home_usecases.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUsecaseImpl _homeUseCase;
  HomeBloc(this._homeUseCase) : super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      emit(const _$_Loading());
      try {
        final result = await _homeUseCase.getMainInfo();

        emit(_$_Success(mainInfo: result));
      } catch (e) {
        emit(_$_Error(errorText: e.toString()));
      }
    });
  }
}
