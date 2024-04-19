import 'package:flutter/material.dart';
import 'package:she_drive_pro/commons/widgets/sign_up_form.dart';
import 'package:she_drive_pro/screens/sign_up.dart';
import 'package:she_drive_pro/screens/uploadDocumentScreens/Id_image_upload.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple,primary: Color(0xff9F2067),secondary: Colors.white),
        useMaterial3: true,
      ),
      home: const SignUpScreen(),
    );
  }
}

