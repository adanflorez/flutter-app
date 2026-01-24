import 'package:flutter/material.dart';
import 'package:hello_world/config/app_routes.dart';
import 'package:hello_world/config/copies.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formLoginKey = GlobalKey<FormState>();
  late String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
          child: Column(
            children: [
              Text(
                CustomCopys.hello,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 21, 16, 59),
                child: Text(
                  CustomCopys.lorem,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Form(
                  key: _formLoginKey,
                  child: Column(
                    children: [
                      TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Por favor ingresar usuario";
                            }
                            if (value.length >= 7) {
                              return "Por favor ingresa un usuario valido";
                            }
                            userName = value;
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: CustomCopys.userInputLabel,
                          ),
                          style: const TextStyle()),
                      const SizedBox(height: 16),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: CustomCopys.userPswInputLabel,
                        ),
                        obscureText: true,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formLoginKey.currentState!.validate()) {
                              Navigator.of(context).pushReplacementNamed(
                                  AppRoutes.home,
                                  arguments: userName);
                            }
                          },
                          child: const Text("Subir formulario"))
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
