// login page
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({required this.onTap, super.key});
  final void Function()? onTap;
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> register() async {
    final authService = AuthService();
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await authService.signUp(emailController.text, passwordController.text);
      } on Exception catch (error) {
        if (!mounted) return;
        await showDialog<void>(
          context: context,
          builder: (context) => AlertDialog(title: Text(error.toString())),
        );
      }
    } else {
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder:
            (context) => const AlertDialog(title: Text('Password not match')),
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
              'Lets Create a New Account for you',
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

            MyTextfield(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obsecureText: true,
            ),
            MyButton(onTap: register, text: 'REGISTER'),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                Text(
                  'Already Have an Account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login Here',
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
