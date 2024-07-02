import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final vercode = TextEditingController();

  @override
  void dispose() {
    vercode.dispose();
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Введите код отправленный на Whatsapp номер ',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '+7 (701) 700 70 70',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 5,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      cursorColor: greenMain,
                      autoDisposeControllers: false,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        fieldHeight: 50,
                        fieldWidth: 50,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      controller: vercode,
                      beforeTextPaste: (text) {
                        return true;
                      },
                    ),
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
                      //CHANGE PUSH
                      text: 'Подтвердить',
                      func: () {
                        context.go('/main');
                        print('VERIFATION CALL');
                      },
                    )),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: CustomButton(
                    //CHANGE PUSH
                    text: 'Отправить повторно',
                    color: Colors.black38,
                    func: () {
                      print('VERIFATION RECALL');
                    },
                  ),
                ),
                const SizedBox(height: 70),
              ],
            )
          ],
        ),
      ),
    );
  }
}
