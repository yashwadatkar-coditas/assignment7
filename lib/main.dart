import 'package:assignment7/core/dependency_injection_container/dependency_injection_container.dart';
import 'package:assignment7/features/home/presentation/bloc/product_bloc.dart';
import 'package:assignment7/features/home/presentation/bloc/product_event.dart';
import 'package:assignment7/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUp();
  runApp(BlocProvider(
    create: (context) => ProductBloc()..add(ProductInitialEvent()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardTheme: CardTheme(margin: EdgeInsets.all(10))
      ),
      home: HomePage(),
    );
  }
}
