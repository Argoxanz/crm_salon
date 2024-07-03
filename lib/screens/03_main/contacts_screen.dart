import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/widgets/custom_appbar.dart';
import 'package:na_beauty_crm/widgets/custom_navbar.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
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
