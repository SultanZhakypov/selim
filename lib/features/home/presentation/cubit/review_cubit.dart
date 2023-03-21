import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/review_entity.dart';
import '../../domain/usecases/home_usecases.dart';

@injectable
class ReviewCubit extends Cubit<ReviewState> {
  final HomeUsecaseImpl _homeUseCase;
  ReviewCubit(this._homeUseCase) : super(ReviewInitial());

  void getReview() async {
    emit(ReviewLoading());
    try {
      final result = await _homeUseCase.getReview();

      emit(ReviewSuccess(result));
    } catch (e) {
      emit(ReviewError(error: e.toString()));
    }
  }
}

abstract class ReviewState extends Equatable {
  const ReviewState();
  @override
  List<Object?> get props => [];
}

class ReviewInitial extends ReviewState {}

class ReviewLoading extends ReviewState {}

class ReviewSuccess extends ReviewState {
  const ReviewSuccess(this.review);
  final List<ReviewEntity> review;

  @override
  List<Object?> get props => [review];
}

class ReviewError extends ReviewState {
  final String error;
  const ReviewError({required this.error});
}
