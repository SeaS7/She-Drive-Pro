import 'package:flutter/material.dart';
import 'package:she_drive_pro/commons/widgets/logo.dart';
import 'package:she_drive_pro/commons/widgets/tutor_detail_form.dart';
import 'package:she_drive_pro/commons/widgets/vehicle_detail_form.dart';

class TutorDetailsScreen extends StatefulWidget {
  const TutorDetailsScreen({super.key});

  @override
  State<TutorDetailsScreen> createState() => _TutorDetailsScreenState();
}

class _TutorDetailsScreenState extends State<TutorDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
        backgroundColor: const Color(0xff9F2067),
        body: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Center(
              child: isSmallScreen
                  ? const SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Logo(),
                          TutorDetailForm(),
                        ],
                      ),
                  )
                  : Container(
                      padding: const EdgeInsets.all(32.0),
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: const Row(
                        children: [
                          Expanded(child: Logo()),
                          Expanded(
                            child: SingleChildScrollView(child: Center(child: TutorDetailForm())),
                          ),
                        ],
                      ),
                    )),
        ));
  }
}



