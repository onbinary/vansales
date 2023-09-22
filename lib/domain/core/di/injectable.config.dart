// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../../application/login/login_bloc.dart' as _i12;
import '../../../application/stock/stock_bloc.dart' as _i13;
import '../../../infrastructure/home/home_impl.dart' as _i4;
import '../../../infrastructure/login/login_impl.dart' as _i6;
import '../../../infrastructure/stock/stock_impl.dart' as _i11;
import '../../../infrastructure/stockaccept/stock_accept_impl.dart' as _i9;
import '../../home/home_service.dart' as _i3;
import '../../login/login_service.dart' as _i5;
import '../../stock/stock_service.dart' as _i10;
import '../../stockaccept/stock_accept_service.dart' as _i8;
import 'injectionmodule.dart' as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.HomeService>(() => _i4.HomeImpl());
  gh.lazySingleton<_i5.LoginService>(() => _i6.LoginImpl());
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => injectionModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i8.StockAcceptService>(() => _i9.StockAcceptImpl());
  gh.lazySingleton<_i10.StockService>(() => _i11.StockImpl());
  gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(get<_i5.LoginService>()));
  gh.factory<_i13.StockBloc>(() => _i13.StockBloc(get<_i10.StockService>()));
  return get;
}

class _$InjectionModule extends _i14.InjectionModule {}
