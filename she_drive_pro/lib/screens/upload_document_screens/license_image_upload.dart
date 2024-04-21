import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:she_drive_pro/commons/widgets/image_upload.dart';

class LicenseImageUploadScreen extends StatefulWidget {
  const LicenseImageUploadScreen({Key? key}) : super(key: key);

  @override
  State<LicenseImageUploadScreen> createState() => _LicenseImageUploadScreenState();
}

class _LicenseImageUploadScreenState extends State<LicenseImageUploadScreen> {

  XFile? _LicenseImageFront;
  XFile? _LicenseImageBack;
  List<XFile?> images = [];
  List<String> headings = [
    '3: Upload Your License Front Image',
    '4: Upload Your License Back Image',

  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      images = [
        _LicenseImageFront,
        _LicenseImageBack,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F2067),
      body: ImageUploader(images: images, headings: headings, currentScreen: "LicenseImageUploadScreen",)
    );
  }

}
