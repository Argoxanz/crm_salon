import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/custom_button.dart';

class LicenceScreen extends StatefulWidget {
  const LicenceScreen({super.key});

  @override
  State<LicenceScreen> createState() => _LicenceScreenState();
}

class _LicenceScreenState extends State<LicenceScreen> {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Пользовательское соглашение',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20)),
                    height: MediaQuery.of(context).size.height - 350,
                    child: Scrollbar(
                      trackVisibility: true,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(licenceAgreement),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: CustomButton(
                    text: 'Принимаю',
                    func: () {
                      context.push('/rl/register');
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
