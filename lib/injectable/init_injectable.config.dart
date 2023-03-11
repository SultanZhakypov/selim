// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:selim/core/dio_settings/dio_settings.dart' as _i3;
import 'package:selim/features/home/data/repositories/home_repo.dart' as _i4;
import 'package:selim/features/home/domain/usecases/home_usecases.dart' as _i5;
import 'package:selim/features/home/presentation/bloc/home_bloc.dart' as _i6;

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
  gh.singleton<_i3.DioSettings>(_i3.DioSettings());
  gh.lazySingleton<_i4.HomeRepo>(() => _i4.HomeRepoImpl(gh<_i3.DioSettings>()));
  gh.singleton<_i5.HomeUseCase>(_i5.HomeUsecaseImpl(gh<_i4.HomeRepo>()));
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc(gh<_i5.HomeUseCase>()));
  return getIt;
}
