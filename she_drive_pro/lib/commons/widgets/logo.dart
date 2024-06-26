import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Image(image: AssetImage('assets/images/app_logo.png'), height: 120);
  }
}