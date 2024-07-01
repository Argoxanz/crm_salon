import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        const Text(
          'Нет аккаунта? ',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push('/rl/register');
          },
          child: const Text(
            'Регистарция',
            style: TextStyle(
                color: greenMain, fontWeight: FontWeight.w600, fontSize: 17),
          ),
        )
      ],
    );
  }
}
