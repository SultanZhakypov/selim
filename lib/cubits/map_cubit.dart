import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../features/home/domain/entities/main_info_map_entity.dart';
import '../features/home/domain/usecases/home_usecases.dart';

@injectable
class MapCubit extends Cubit<MapState> {
  final HomeUsecaseImpl _homeUseCase;
  MapCubit(this._homeUseCase) : super(MapInitial());

  void getMap() async {
    emit(MapLoading());
    try {
      final result = await _homeUseCase.getMap();
      emit(MapSuccess(result));
    } catch (e) {
      emit(MapError(error: e.toString()));
    }
  }
}

abstract class MapState extends Equatable {
  const MapState();
  @override
  List<Object?> get props => [];
}

class MapInitial extends MapState {}

class MapLoading extends MapState {}

class MapSuccess extends MapState {
  const MapSuccess(this.map);
  final MainInfoMapEntity map;

  @override
  List<Object?> get props => [map];
}

class MapError extends MapState {
  final String error;
  const MapError({
    required this.error,
  });
}
