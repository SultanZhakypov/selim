part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.success({final MainInfoEntity? mainInfo}) = _Success;
  const factory HomeState.error() = _Error;
  const factory HomeState.loading() = _Loading;
}
