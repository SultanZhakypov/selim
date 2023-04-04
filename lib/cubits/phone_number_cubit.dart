import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../features/home/data/models/main_info/main_info_model.dart';
import '../features/home/domain/usecases/home_usecases.dart';

@injectable
class PhoneNumberCubit extends Cubit<PhoneNumberState> {
  final HomeUsecaseImpl _homeUseCase;
  PhoneNumberCubit(this._homeUseCase) : super(PhoneNumberInitial());

  void getPhoneNumber() async {
    emit(PhoneNumberLoading());
    try {
      final result = await _homeUseCase.getPhoneNumber();

      emit(PhoneNumberSuccess(result));
    } catch (e) {
      emit(PhoneNumberError(error: e.toString()));
    }
  }
}

abstract class PhoneNumberState extends Equatable {
  const PhoneNumberState();
  @override
  List<Object?> get props => [];
}

class PhoneNumberInitial extends PhoneNumberState {}

class PhoneNumberLoading extends PhoneNumberState {}

class PhoneNumberSuccess extends PhoneNumberState {
  const PhoneNumberSuccess(this.number);
  final List<PhoneNumber> number;

  @override
  List<Object?> get props => [number];
}

class PhoneNumberError extends PhoneNumberState {
  final String error;
  const PhoneNumberError({
    required this.error,
  });
}
