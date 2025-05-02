import 'package:flutter/material.dart';
import 'package:food_delivery/pages/setting_page.dart';
import 'package:food_delivery/services/auth/auth_service.dart';
import 'package:food_delivery/services/auth/login_or_register.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_clock_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(color: Theme.of(context).colorScheme.secondary),
          ),
          MyDrawerTile(
            text: 'HOME',
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyDrawerTile(
            text: 'SETTING',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute<SettingPage>(
                  builder: (context) => const SettingPage(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: 'LOG OUT',
            icon: Icons.logout,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute<LoginOrRegister>(
                  builder: (context) => const LoginOrRegister(),
                ),
              );
            },
          ),
          const SizedBox(height: 25),

          //list of children
        ],
      ),
    );
  }
}

class MyDrawerTile extends StatelessWidget {
  const MyDrawerTile({
    required this.text,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final String text;
  final IconData? icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        onTap: onTap,
      ),
    );
  }
}
