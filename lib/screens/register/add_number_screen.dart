import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/already_have_an_account.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';

import '../../widgets/custom_text_form_field.dart';

class AddNumber extends StatefulWidget {
  const AddNumber({super.key});

  @override
  State<AddNumber> createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {
  final number = TextEditingController();

  @override
  void dispose() {
    number.dispose();

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
                      'Введите номер телефона для отправки кода на ',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 40,
                          color: greenMain,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Whatsapp',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
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
                    text: 'Продолжить',
                    func: () {
                      context.push('/rl/register/number/confirm');
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
