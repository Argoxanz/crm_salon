import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:na_beauty_crm/const.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
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
            context.push('/rl/login');
          },
          child: const Text(
            'Войти',
            style: TextStyle(
                color: greenMain, fontWeight: FontWeight.w600, fontSize: 17),
          ),
        )
      ],
    );
  }
}
