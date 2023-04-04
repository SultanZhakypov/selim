import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../features/home/domain/usecases/home_usecases.dart';

@injectable
class FeedbackCubit extends Cubit<FeedBackState> {
  final HomeUsecaseImpl _homeUseCase;
  FeedbackCubit(this._homeUseCase) : super(FeedbackInitial());

  void postFeedBack(
      {required String name,
      required String phone,
      required String message}) async {
    
    try {
      await _homeUseCase.postFeedBack(
          message: message, phone: phone, name: name);

      emit(FeedBackSuccess());
    } catch (e) {
      emit(FeedBackError(error: e.toString()));
    }
  }
}

abstract class FeedBackState extends Equatable {
  const FeedBackState();
  @override
  List<Object?> get props => [];
}

class FeedbackInitial extends FeedBackState {}

class FeedbackLoading extends FeedBackState {}

class FeedBackSuccess extends FeedBackState {}

class FeedBackError extends FeedBackState {
  final String error;
  const FeedBackError({required this.error});
}
