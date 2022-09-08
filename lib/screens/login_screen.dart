import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/utils/assets.dart';
import 'package:zoom_clone/utils/navigation.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthMethods _authMethods = AuthMethods();

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Titile
            const Text(
              'Start or Join a Meeting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0),
              child: Image.asset(kOnboardingImage),
            ),

            // button
            CustomButton(
                label: 'Google Sign In',
                onTap: () async {
                  bool res = await _authMethods.signInWithGoogle();
                  if (res) {
                    // goTo Home
                    Navigation.pushNamedAndRemoveUntil(
                        HomeScreen.routeName, (p0) => false);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
