import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:vansales/domain/login/login_service.dart';
import '../../../application/login/login_bloc.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection() async {
  await $initGetIt(getIt, environment: Environment.prod);
}
