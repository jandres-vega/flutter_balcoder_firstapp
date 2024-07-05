import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/home/home_page.dart';
import 'package:flutter_balcoder_firstapp/ui/login/login_page.dart';
import 'package:flutter_balcoder_firstapp/ui/user/user_page.dart';
import 'package:flutter_balcoder_firstapp/utils/routes/app_routes.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menú'),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Inicio'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => const MyHomePage(),
            ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.login),
          title: const Text('login'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
        ),
        ListTile(
          leading: const Icon(Icons.app_registration),
          title: const Text('registro'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.register);
          },
        ),
        ListTile(
          leading: const Icon(Icons.edit_document),
          title: const Text('Form'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.form);
          },
        ),
      ],
    );
  }
}