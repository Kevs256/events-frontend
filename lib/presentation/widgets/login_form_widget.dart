import 'package:events_frontend/shared/button.dart';
import 'package:events_frontend/shared/constants.dart';
import 'package:events_frontend/shared/textbutton.dart';
import 'package:events_frontend/shared/textformfield.dart';
import 'package:flutter/material.dart';

import '../../shared/colors.dart';
import '../../shared/text.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late final TextEditingController _username;
  late final TextEditingController _password;

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(AppSpacing.spacingSmall),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextWidget(
              text: 'Login',
              fontSize: FontSize.fontSizeLarge,
              textColor: AppColors.primaryColor,
              isBold: true,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormFieldWidget(
                controller: _username,
                labelText: 'Usuario',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormFieldWidget(
                controller: _password,
                labelText: 'Contraseña',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: TextButtonWidget(
                text: 'Registrarse',
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: TextButtonWidget(
                text: 'Recuperar Contraseña',
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: ButtonWidget(
                text: 'Entrar',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
