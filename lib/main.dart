import 'package:bazzar/controller/auth_controller.dart';
import 'package:bazzar/controller/home_screen_controller.dart';
import 'package:bazzar/views/AuthScreen/login_screen.dart';
import 'package:bazzar/views/HomeScreen/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(bazzar());
}

class bazzar extends StatelessWidget {
  const bazzar({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthController(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeScreenController(),
        )
      ],
      child: MaterialApp(
        home: Home(),
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Colors.transparent)),
      ),
    );
  }
}
