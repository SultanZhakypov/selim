import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/home/domain/entities/product_entity.dart';
import '../../domain/usecases/home_usecases.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final HomeUsecaseImpl _homeUseCase;
  ProductCubit(this._homeUseCase) : super(ProductInitial());

  void getProduct() async {
    emit(ProductLoading());
    try {
      final result = await _homeUseCase.getProduct();

      emit(ProductSuccess(result));
    } catch (e) {
      emit(ProductError(error: e.toString()));
    }
  }
}

abstract class ProductState extends Equatable {
  const ProductState();
  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {
  const ProductSuccess(this.product);
  final List<ProductEntity> product;

  @override
  List<Object?> get props => [product];
}

class ProductError extends ProductState {
  final String error;
  const ProductError({required this.error});
}
