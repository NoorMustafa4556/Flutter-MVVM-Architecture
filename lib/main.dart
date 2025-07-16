// lib/main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';      // 1. Provider package import karein
import 'Utils/Routes/Routes.dart';
import 'Utils/Routes/RoutesName.dart';
import 'ViewModel/AuthViewModel.dart';
import 'ViewModel/HomeViewModel.dart';
import 'ViewModel/UserViewModel.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 3. MaterialApp ko MultiProvider se wrap kiya
    return MultiProvider(
      providers: [
        // Yahan aap apne tamam ViewModels register karenge
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        // Misal ke tor par: ChangeNotifierProvider(create: (_) => HomeViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}