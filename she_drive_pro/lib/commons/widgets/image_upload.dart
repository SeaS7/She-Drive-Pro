import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:she_drive_pro/commons/widgets/logo.dart';
import 'package:she_drive_pro/screens/auth_screens/tutor_detail.dart';
import 'package:she_drive_pro/screens/upload_document_screens/license_image_upload.dart';
import 'package:she_drive_pro/screens/upload_document_screens/selfie_upload.dart';
import 'package:get/get.dart';

class ImageUploader extends StatefulWidget {
  final List<XFile?> images;
  final List<String> headings;
  final String currentScreen;

  ImageUploader(
      {Key? key,
      required this.images,
      required this.headings,
      required this.currentScreen})
      : super(key: key);
  @override
  State<ImageUploader> createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  // State variables
  List<XFile?> images = [];
  List<String> headings = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      images = widget.images;
      headings = widget.headings;
    });
  }

  // Function to pick an image from the gallery or camera
  Future<XFile?> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      return pickedImage;
    } else {
      // Handle error or cancellation here
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo widget
                const Logo(),
                // Display images and headings
                for (var i = 0; i < images.length; i++) ...[
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      headings[i],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Display selected image if available
                  if (images[i] != null)
                    Image.file(
                      File(images[i]!.path),
                      width: 300,
                    ),
                  // Display default camera image if no image selected
                  if (images[i] == null)
                    Image.asset('assets/images/camera.png', width: 300),
                  _gap(),
                  // Buttons to pick image from gallery or camera
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () async {
                          final pickedImage =
                              await _pickImage(ImageSource.gallery);
                          if (pickedImage != null) {
                            setState(() {
                              images[i] = pickedImage;
                            });
                          }
                        },
                        child: const Text('Gallery'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () async {
                          final pickedImage =
                              await _pickImage(ImageSource.camera);
                          if (pickedImage != null) {
                            setState(() {
                              images[i] = pickedImage;
                            });
                          }
                        },
                        child: const Text('Camera'),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 2,
                    height: 20,
                  ),
                  _gap(),
                ],
                // Next button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 24,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    onPressed: () {
                      if (widget.currentScreen == "SelfieScreen" ||
                          images[0] != null) {
                        // Navigate to TutorDetailsScreen
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const TutorDetailsScreen()));
                      } else if (widget.currentScreen == "SelfieScreen") {
                        // Show dialog to upload selfie first
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title:
                                  const Text('Please Upload the Selfie first'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                      if (images[0] == null && images[1] == null) {
                        // Show dialog to upload all images first
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text(
                                  'Please Upload the all images first'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        // User has not selected the image, show an error message or prompt them to select an image
                        if (widget.currentScreen == 'IDimageUploadScreen') {
                          // Navigate to LicenseImageUploadScreen
                            Get.to(() => const LicenseImageUploadScreen());
                        } else if (widget.currentScreen ==
                            'LicenseImageUploadScreen') {
                          // Navigate to SelfieScreen
                             Get.to(() => const SelfieScreen());

                        }
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
