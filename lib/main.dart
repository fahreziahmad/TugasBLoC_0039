import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_bloc/auth_bloc.dart';
import 'package:tugas_bloc/home.dart';
import 'package:tugas_bloc/login.dart';
import 'package:tugas_bloc/order.dart';
import 'package:tugas_bloc/order_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => AuthBloc()),
        BlocProvider<OrderBloc>(create: (_) => OrderBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BLoC State Management App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/order': (context) => const OrderPage(),
        },
      ),
    );
  }
}