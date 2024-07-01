import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.pushTo,
  });

  final String text;
  final String pushTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(pushTo);
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: greenMain,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
