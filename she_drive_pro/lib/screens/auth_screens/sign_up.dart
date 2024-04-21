import 'package:flutter/material.dart';
import 'package:she_drive_pro/commons/widgets/logo.dart';
import 'package:she_drive_pro/commons/widgets/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
        backgroundColor: const Color(0xff9F2067),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Center(
                child: isSmallScreen
                    ? const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Logo(),
                          SignUpFormContent(),
                        ],
                      )
                    : Container(
                        padding: const EdgeInsets.all(32.0),
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: const Row(
                          children: [
                            Expanded(child: Logo()),
                            Expanded(
                              child: SingleChildScrollView(child: Center(child: SignUpFormContent())),
                            ),
                          ],
                        ),
                      )),
          ),
        ));
  }
}



