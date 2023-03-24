import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:selim/features/news/domain/usecases/news_usecases.dart';

import '../../data/models/news/news_model.dart';

@injectable
class NewsCubit extends Cubit<NewsState> {
  final NewsUseCaseImpl _newsUseCase;
  NewsCubit(this._newsUseCase) : super(NewsInitial());

  int _offset = 0;
  List<Result> allNews = [];

  void getNews() async {
    emit(NewsSuccess(news: allNews, isLoading: true));
    try {
      final result = await _newsUseCase.getNews(_offset);
      allNews.addAll(result.results);
      _offset = _offset + 2;
      emit(NewsSuccess(
        news: allNews,
        isLoading: false,
        nextPage: result.next,
      ));
    } catch (e) {
      emit(NewsError(error: e.toString()));
    }
  }
}

abstract class NewsState {
  const NewsState();
}

class NewsInitial extends NewsState {}

class NewsSuccess extends NewsState {
  const NewsSuccess(
      {required this.news, required this.isLoading, this.nextPage});

  final List<Result> news;
  final bool isLoading;
  final String? nextPage;
}

class NewsError extends NewsState {
  final String error;
  const NewsError({required this.error});
}
