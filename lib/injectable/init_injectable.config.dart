// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:selim/features/home/data/repositories/home_repo.dart' as _i4;
import 'package:selim/features/home/domain/usecases/home_usecases.dart' as _i5;
import 'package:selim/features/home/presentation/cubit/about_us_cubit.dart'
    as _i13;
import 'package:selim/features/home/presentation/cubit/categories_cubit.dart'
    as _i15;
import 'package:selim/features/home/presentation/cubit/feedback_cubit.dart'
    as _i16;
import 'package:selim/features/home/presentation/cubit/main_info_cubit.dart'
    as _i6;
import 'package:selim/features/home/presentation/cubit/phone_number_cubit.dart'
    as _i9;
import 'package:selim/features/home/presentation/cubit/product_cubit.dart'
    as _i10;
import 'package:selim/features/home/presentation/cubit/review_cubit.dart'
    as _i11;
import 'package:selim/features/home/presentation/cubit/schedule_cubit.dart'
    as _i12;
import 'package:selim/features/news/data/repositories/news_repo.dart' as _i7;
import 'package:selim/features/news/domain/usecases/news_usecases.dart' as _i8;
import 'package:selim/features/news/presentation/cubit/advantage_cubit.dart'
    as _i14;
import 'package:selim/features/news/presentation/cubit/detail_news.dart'
    as _i18;
import 'package:selim/features/news/presentation/cubit/news_cubit.dart' as _i17;

import '../core/api_client/api_client.dart' as _i19;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.HomeRepo>(() => _i4.HomeRepoImpl(gh<_i3.Dio>()));
  gh.lazySingleton<_i5.HomeUsecaseImpl>(
      () => _i5.HomeUsecaseImpl(gh<_i4.HomeRepo>()));
  gh.factory<_i6.MainInfoCubit>(
      () => _i6.MainInfoCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.lazySingleton<_i7.NewsRepo>(() => _i7.NewsRepoImpl(gh<_i3.Dio>()));
  gh.lazySingleton<_i8.NewsUseCaseImpl>(
      () => _i8.NewsUseCaseImpl(gh<_i7.NewsRepo>()));
  gh.factory<_i9.PhoneNumberCubit>(
      () => _i9.PhoneNumberCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i10.ProductCubit>(
      () => _i10.ProductCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i11.ReviewCubit>(
      () => _i11.ReviewCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i12.ScheduleCubit>(
      () => _i12.ScheduleCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i13.AboutUsCubit>(
      () => _i13.AboutUsCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i14.AdvantageOrServiceCubit>(
      () => _i14.AdvantageOrServiceCubit(gh<_i8.NewsUseCaseImpl>()));
  gh.factory<_i15.CategoriesCubit>(
      () => _i15.CategoriesCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i16.FeedbackCubit>(
      () => _i16.FeedbackCubit(gh<_i5.HomeUsecaseImpl>()));
  gh.factory<_i17.NewsCubit>(() => _i17.NewsCubit(gh<_i8.NewsUseCaseImpl>()));
  gh.factory<_i18.NewsDetailCubit>(
      () => _i18.NewsDetailCubit(gh<_i8.NewsUseCaseImpl>()));
  return getIt;
}

class _$RegisterModule extends _i19.RegisterModule {}
