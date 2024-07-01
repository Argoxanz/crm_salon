import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/already_have_an_account.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';
import 'package:na_beauty_crm/widgets/custom_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fullName = TextEditingController();
  final email = TextEditingController();
  final pass1 = TextEditingController();
  final pass2 = TextEditingController();

  @override
  void dispose() {
    fullName.dispose();
    email.dispose();
    pass1.dispose();
    pass2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backroundGrey,
          //Profile
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: const Icon(
          //         Icons.person,
          //         color: greenMain,
          //         size: 52,
          //       ))
          // ],
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
                    'Создать аккаунт',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controllerC: fullName,
                    textC: 'Имя Фамилия',
                    iconC: const Icon(
                      Icons.person,
                      color: greenMain,
                      size: iconInputSize,
                    ),
                  ),
                  CustomTextFormField(
                    controllerC: email,
                    textC: 'Электронный адрес',
                    iconC: const Icon(
                      Icons.email,
                      color: greenMain,
                      size: iconInputSize,
                    ),
                  ),
                  CustomTextFormField(
                    controllerC: pass1,
                    textC: 'Пароль',
                    iconC: const Icon(
                      Icons.lock,
                      color: greenMain,
                      size: iconInputSize,
                    ),
                    isObscured: true,
                  ),
                  CustomTextFormField(
                    controllerC: pass2,
                    textC: 'Повторите пароль',
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
                      text: 'Продолжить',
                      func: () {
                        context.push('/rl/register/number');
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  const AlreadyHaveAnAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
