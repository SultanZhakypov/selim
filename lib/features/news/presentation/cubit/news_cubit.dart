import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/news/domain/usecases/news_usecases.dart';

import '../../data/models/news/news_model.dart';

@injectable
class NewsCubit extends Cubit<NewsState> {
  final NewsUseCaseImpl _newsUseCase;
  NewsCubit(this._newsUseCase) : super(NewsInitial());

  void getNews() async {
    emit(NewsLoading());
    try {
      final news = await _newsUseCase.getNews();

      emit(NewsSuccess(news));
    } catch (e) {
      emit(NewsError(error: e.toString()));
    }
  }
}

abstract class NewsState extends Equatable {
  const NewsState();
  @override
  List<Object?> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsSuccess extends NewsState {
  const NewsSuccess(this.news);
  final NewsModel news;

  @override
  List<Object?> get props => [news];
}

class NewsError extends NewsState {
  final String error;
  const NewsError({required this.error});
}
