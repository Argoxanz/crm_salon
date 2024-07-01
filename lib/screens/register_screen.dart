import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/widgets/already_have_an_account.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';

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
    // Clean up the controller when the widget is removed from the
    // widget tree.
    fullName.dispose();
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: CustomButton(
                        //CHANGE PUSH
                        text: 'Продолжить',
                        pushTo: '/rl/CHANGE'),
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

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controllerC,
    required this.textC,
    required this.iconC,
    this.isObscured = false,
  });

  final TextEditingController controllerC;
  final String textC;
  final Widget iconC;
  final bool isObscured;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool passwordVisible = true;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: widget.iconC,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: greenMain),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: widget.textC,
          focusColor: greenMain,
          suffixIcon: widget.isObscured
              ? IconButton(
                  icon: Icon(
                    passwordVisible ? Icons.visibility_off : Icons.visibility,
                    color: greenMain,
                    size: iconInputSize,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                )
              : null,
        ),
        controller: widget.controllerC,
        obscureText: widget.isObscured ? passwordVisible : false,
      ),
    );
  }
}
