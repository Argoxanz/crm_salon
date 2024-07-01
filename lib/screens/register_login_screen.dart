import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/already_have_an_account.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';

class RegisterLogin extends StatelessWidget {
  const RegisterLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: backroundGrey,
              ),
            ),
            const SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Image(image: AssetImage('assets/images/Logo.png')),
                  )
                ],
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: CustomButton(
                    text: 'Создать аккаунт',
                    pushTo: '/rl/register',
                  ),
                ),
                SizedBox(height: 20),
                AlreadyHaveAnAccount(),
                SizedBox(height: 70),
              ],
            )
          ],
        ),
      ),
    );
  }
}
