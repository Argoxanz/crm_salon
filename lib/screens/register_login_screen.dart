import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: greenMain,
                    ),
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Создать аккаунт',
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    const Text(
                      'Уже есть аккаунт? ',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.push('/FILLLLL');
                      },
                      child: const Text(
                        'Войти',
                        style: TextStyle(
                            color: greenMain,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
