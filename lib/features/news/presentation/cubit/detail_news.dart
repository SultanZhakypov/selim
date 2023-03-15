import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:selim/features/news/domain/entities/news_image_entity.dart';
import 'package:selim/features/news/domain/usecases/news_usecases.dart';

@injectable
class NewsDetailCubit extends Cubit<NewsDetailState> {
  final NewsUseCaseImpl _newsUseCase;
  NewsDetailCubit(this._newsUseCase) : super(NewsDetailInitial());

  void getDetailNews(int id) async {
    emit(NewsDetailLoading());
    try {
      final news = await _newsUseCase.getDetailNews(id);

      emit(NewsDetailSuccess(news));
    } catch (e) {
      emit(NewsDetailError(error: e.toString()));
    }
  }
}

abstract class NewsDetailState extends Equatable {
  const NewsDetailState();
  @override
  List<Object?> get props => [];
}

class NewsDetailInitial extends NewsDetailState {}

class NewsDetailLoading extends NewsDetailState {}

class NewsDetailSuccess extends NewsDetailState {
  const NewsDetailSuccess(this.news);
  final NewsEntity news;

  @override
  List<Object?> get props => [news];
}

class NewsDetailError extends NewsDetailState {
  final String error;
  const NewsDetailError({required this.error});
}
