import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/home/domain/entities/categories_entity.dart';
import '../features/home/domain/usecases/home_usecases.dart';

@injectable
class CategoriesCubit extends Cubit<CategoriesState> {
  final HomeUsecaseImpl _homeUseCase;
  CategoriesCubit(this._homeUseCase) : super(CategoriesInitial());

  void getCategories() async {
    emit(CategoriesLoading());
    try {
      final result = await _homeUseCase.getCategories();

      emit(CategoriesSuccess(result));
    } catch (e) {
      emit(CategoriesError(error: e.toString()));
    }
  }
}

abstract class CategoriesState extends Equatable {
  const CategoriesState();
  @override
  List<Object?> get props => [];
}

class CategoriesInitial extends CategoriesState {}

class CategoriesLoading extends CategoriesState {}

class CategoriesSuccess extends CategoriesState {
  const CategoriesSuccess(this.categories);
  final List<CategoriesEntity> categories;

  @override
  List<Object?> get props => [categories];
}

class CategoriesError extends CategoriesState {
  final String error;
  const CategoriesError({required this.error});
}
