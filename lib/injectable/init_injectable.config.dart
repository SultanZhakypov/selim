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
import 'package:selim/features/home/presentation/cubit/main_info_cubit.dart'
    as _i6;

import '../core/api_client/api_client.dart' as _i8;

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

  return getIt;
}

class _$RegisterModule extends _i8.RegisterModule {}
