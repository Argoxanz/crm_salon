import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/custom_appbar.dart';
import 'package:na_beauty_crm/widgets/custom_navbar.dart';

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar(),
        bottomNavigationBar: customNavBar(context),
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
            const Column(),
          ],
        ),
      ),
    );
  }
}
