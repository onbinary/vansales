// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../../application/login/login_bloc.dart' as _i8;
import '../../../infrastructure/login/login_impl.dart' as _i4;
import '../../../infrastructure/stock/stock_impl.dart' as _i7;
import '../../login/login_service.dart' as _i3;
import '../../stock/stock_service.dart' as _i6;
import 'injectionmodule.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectionModule = _$InjectionModule();
  gh.lazySingleton<_i3.LoginService>(() => _i4.LoginImpl());
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i6.StockService>(() => _i7.StockImpl());
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc(get<_i3.LoginService>()));
  return get;
}

class _$InjectionModule extends _i9.InjectionModule {}
