import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/news/domain/entities/detail_category_entity.dart';
import '../../domain/usecases/news_usecases.dart';

@injectable
class TypeCategoriesInDetail extends Cubit<TypeCategoriesState> {
  final NewsUseCaseImpl _newsUseCaseImpl;
  TypeCategoriesInDetail(this._newsUseCaseImpl)
      : super(TypeCategoriesInitial());

  void getCategories(int id) async {
    emit(TypeCategoriesLoading());
    try {
      final result = await _newsUseCaseImpl.getTypeCategoriesInDetail(id);

      emit(TypeCategoriesSuccess(result));
    } catch (e) {
      emit(TypeCategoriesError(error: e.toString()));
    }
  }
}

abstract class TypeCategoriesState extends Equatable {
  const TypeCategoriesState();
  @override
  List<Object?> get props => [];
}

class TypeCategoriesInitial extends TypeCategoriesState {}

class TypeCategoriesLoading extends TypeCategoriesState {}

class TypeCategoriesSuccess extends TypeCategoriesState {
  const TypeCategoriesSuccess(this.categories);
  final DetailCategoryEntity categories;

  @override
  List<Object?> get props => [categories];
}

class TypeCategoriesError extends TypeCategoriesState {
  final String error;
  const TypeCategoriesError({required this.error});
}
