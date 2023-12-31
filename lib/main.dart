import 'package:flutter/material.dart';
import 'package:vansales/application/acceptstock/acceptstock_bloc.dart';
import 'package:vansales/application/home/home_bloc_bloc.dart';
import 'package:vansales/application/login/login_bloc.dart';
import 'package:vansales/application/stock/stock_bloc.dart';
import 'package:vansales/core/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/core/di/injectable.dart';
import 'presentation/login/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<HomeBlocBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<StockBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<AcceptstockBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'VanSales',
        theme: ThemeData(
            primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
        home: const LoginScreen(),
      ),
    );
  }
}
