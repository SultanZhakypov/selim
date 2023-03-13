import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/home/domain/entities/aboutus_entity.dart';
import '../../domain/usecases/home_usecases.dart';

@injectable
class AboutUsCubit extends Cubit<AboutUsState> {
  final HomeUsecaseImpl _homeUseCase;
  AboutUsCubit(this._homeUseCase) : super(AboutUsInitial());

  void getAboutUs() async {
    emit(AboutUsLoading());
    try {
      final result = await _homeUseCase.getAboutUs();

      emit(AboutUsSuccess(result));
    } catch (e) {
      emit(AboutUsError(error: e.toString()));
    }
  }
}

abstract class AboutUsState extends Equatable {
  const AboutUsState();
  @override
  List<Object?> get props => [];
}

class AboutUsInitial extends AboutUsState {}

class AboutUsLoading extends AboutUsState {}

class AboutUsSuccess extends AboutUsState {
  const AboutUsSuccess(this.aboutUs);
  final AboutUsEntity aboutUs;

  @override
  List<Object?> get props => [aboutUs];
}

class AboutUsError extends AboutUsState {
  final String error;
  const AboutUsError({required this.error});
}
