import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/main_scaffold.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
        titlePage: 'Iniciar sesion con mi cuenta',
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Ingresa el email',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Ingresa el password',
                    ),
                  ),
                  TextButton(
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text('Olvidaste tu contraseña?'),
                      ),
                      onPressed: () {}
                  ),
                  ElevatedButton(
                    child: const Text('Iniciar sesion'),
                    onPressed: (){},
                  )
                ]
              ),
            )
          )
        )
    );
  }
}