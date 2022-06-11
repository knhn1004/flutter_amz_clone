import 'package:flutter/material.dart';
import 'package:flutter_amz_clone/constants/global_variable.dart';
import 'package:flutter_amz_clone/features/auth/screens/auth_screen.dart';
import 'package:flutter_amz_clone/router.dart';

void main() {
  runApp(const AMZCloneApp());
}

class AMZCloneApp extends StatelessWidget {
  const AMZCloneApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          )),
      onGenerateRoute: (routeSettings) => generateRoute(routeSettings),
      home: const AuthScreen(),
    );
  }
}
