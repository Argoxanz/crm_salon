import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';
import 'package:na_beauty_crm/widgets/dont_have_an_account.dart';

import '../../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final number = TextEditingController();
  final pass = TextEditingController();

  @override
  void dispose() {
    number.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backroundGrey,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: backroundGrey,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Center(
                    child: Image(image: AssetImage('assets/images/Logo.png')),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'С возвращением!',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controllerC: number,
                    textC: 'Номер телефона',
                    iconC: const Icon(
                      Icons.phone,
                      color: greenMain,
                      size: iconInputSize,
                    ),
                    isPhone: true,
                  ),
                  CustomTextFormField(
                    controllerC: pass,
                    textC: 'Пароль',
                    iconC: const Icon(
                      Icons.lock,
                      color: greenMain,
                      size: iconInputSize,
                    ),
                    isObscured: true,
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: CustomButton(
                      //CHANGE PUSH
                      text: 'Войти',
                      func: () {
                        context.go('/main');
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const DontHaveAnAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
