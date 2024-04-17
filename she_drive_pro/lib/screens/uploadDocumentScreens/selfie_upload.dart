import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:she_drive_pro/commons/widgets/image_upload.dart';

class SelfieScreen extends StatefulWidget {
  const SelfieScreen({Key? key}) : super(key: key);

  @override
  State<SelfieScreen> createState() => _SelfieScreenState();
}

class _SelfieScreenState extends State<SelfieScreen> {

   XFile? _SelfieImage;
  List<XFile?> images = [];
  List<String> headings = [
    '5: Upload Your Selfie',
  ];
 

  @override
  void initState() {
    super.initState();
    setState(() {
      images = [
        _SelfieImage
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F2067),
      body: ImageUploader(images: images, headings: headings, currentScreen: "SelfieScreen",)
    );
  }

}
