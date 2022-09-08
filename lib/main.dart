import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/utils/navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Navigation.navigatorKey,
      scaffoldMessengerKey: Navigation.scaffoldMessengerKey,
      title: 'Zoom Video Conference',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      initialRoute: '/login',
      routes: {
        LoginScreen.rootName: (context) => const LoginScreen(),
      },
    );
  }
}
