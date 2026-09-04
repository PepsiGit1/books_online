// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart'
    as _i141;
import 'package:books_online/features/search/presentation/cubit/search_cubit.dart'
    as _i935;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i141.HomeCubit>(() => _i141.HomeCubit());
    gh.factory<_i935.SearchCubit>(() => _i935.SearchCubit());
    return this;
  }
}
