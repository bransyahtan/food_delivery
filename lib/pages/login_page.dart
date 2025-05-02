import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({required this.onTap, super.key});
  final void Function()? onTap;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login() async {
    final authService = AuthService();

    try {
      await authService.signIn(emailController.text, passwordController.text);
    } on Exception catch (error) {
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(title: Text(error.toString())),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            Text(
              'Your Food Delivery Application',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            MyTextfield(
              controller: emailController,
              hintText: 'Email',
              obsecureText: false,
            ),
            MyTextfield(
              controller: passwordController,
              hintText: 'Password',
              obsecureText: true,
            ),
            MyButton(onTap: login, text: 'LOGIN'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                Text(
                  'Not a Mamber?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
