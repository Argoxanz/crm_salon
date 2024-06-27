import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go("/registerlogin"),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
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
            ],
          ),
        ),
      ),
    );
  }
}
