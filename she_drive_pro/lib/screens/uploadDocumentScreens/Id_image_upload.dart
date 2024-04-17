import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:she_drive_pro/commons/widgets/image_upload.dart';

class IDimageUploadScreen extends StatefulWidget {
  const IDimageUploadScreen({Key? key}) : super(key: key);

  @override
  State<IDimageUploadScreen> createState() => _IDimageUploadScreenState();
}

class _IDimageUploadScreenState extends State<IDimageUploadScreen> {
  XFile? _IdImageFront;
  XFile? _IdImageBack;
  // XFile? _LicenseImageFront;
  // XFile? _LicenseImageBack;
  // XFile? _SelfieImage;
  List<XFile?> images = [];
  List<String> headings = [
    '1: Upload CNIC Front Image',
    '2: Upload CNIC Back Image',
    // '3: Upload Your License Front Image',
    // '4: Upload Your License Back Image',
    // '5: Upload Your Selfie',
  ];
 

  @override
  void initState() {
    super.initState();
    setState(() {
      images = [
        _IdImageFront,
        _IdImageBack,
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F2067),
      body: ImageUploader(images: images, headings: headings, currentScreen: "IDimageUploadScreen",)
    );
  }

}
