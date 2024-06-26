import 'package:flutter/material.dart';
import 'package:she_drive_pro/commons/widgets/logo.dart';
import 'package:she_drive_pro/commons/forms/vehicle_detail_form.dart';

class VehicleDetailsScreen extends StatefulWidget {
  const VehicleDetailsScreen({super.key});

  @override
  State<VehicleDetailsScreen> createState() => _VehicleDetailsScreenState();
}

class _VehicleDetailsScreenState extends State<VehicleDetailsScreen> {
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
                          VehicleDetailForm(),
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
                            child: SingleChildScrollView(child: Center(child: VehicleDetailForm())),
                          ),
                        ],
                      ),
                    )),
        ));
  }
}



