import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/already_have_an_account.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: CustomButton(
                    text: 'Создать аккаунт',
                    func: () {
                      context.push('/rl/register');
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const AlreadyHaveAnAccount(),
                const SizedBox(height: 70),
              ],
            )
          ],
        ),
      ),
    );
  }
}
