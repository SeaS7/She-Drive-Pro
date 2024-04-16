import 'package:flutter/material.dart';
import 'package:she_drive_pro/screens/tutor_detail.dart';
import 'package:intl/intl.dart';

class VehicleDetailForm extends StatefulWidget {
  const VehicleDetailForm({Key? key}) : super(key: key);

  @override
  State<VehicleDetailForm> createState() => _VehicleDetailFormState();
}

class _VehicleDetailFormState extends State<VehicleDetailForm> {
  DateTime _selectedDate = DateTime.now();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 300),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Vehicle Details",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Text field for vehicle make
            TextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the vehicle make';
              }
              return null;
              },
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
              errorStyle: TextStyle(color: Colors.black), // Add this line
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.directions_car,
                color: Colors.white,
              ),
              labelText: 'Vehicle Make',
              ),
            ),
            _gap(),
            // Text field for vehicle model and color
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the vehicle model and color';
                }
                return null;
              },
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                errorStyle: TextStyle(color: Colors.black), // Add this line
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red), // Add this line
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red), // Add this line
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(
                  Icons.directions_car,
                  color: Colors.white,
                ),
                labelText: 'Vehicle Model and Color',
              ),
            ),
            _gap(),
            // Text field for licence plate number
            TextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Vehicle licence plate number';
              }
              return null;
              },
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
              errorStyle: TextStyle(color: Colors.black), // Add this line
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.drive_eta,
                color: Colors.white,
              ),
              labelText: 'Licence Plate Number',
              ),
            ),
            _gap(),
            // Text field for year of registration
            TextFormField(
              controller: TextEditingController(
              text: _selectedDate != null
                ? DateFormat('yyyy').format(_selectedDate)
                : '',
              ),
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the year of registration';
              }
              return null;
              },
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
              errorStyle: TextStyle(color: Colors.black), // Add this line
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              labelText: 'Year of Registration',
              ),
              onTap: () async {
              FocusScope.of(context).requestFocus(FocusNode());
                DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
                initialDatePickerMode: DatePickerMode.year,
                );
              if (selectedDate != null) {
                setState(() {
                _selectedDate = selectedDate;
                });
              }
              },
            ),
            _gap(),
            // Text field for vehicle type
            TextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the vehicle type';
              }
              return null;
              },
              cursorColor: Colors.white,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
              errorStyle: TextStyle(color: Colors.black), // Add this line
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red), // Add this line
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.directions_car,
                color: Colors.white,
              ),
              labelText: 'Vehicle Type',
              ),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
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
                  if (_formKey.currentState?.validate() ?? false) {
                  /// do something
                  }
                },
                ),
            ),
            _gap(),
            //add a divider
            const Divider(
              color: Colors.white,
              thickness: 1,
            ),
            const Text(
              'Already have an account?',
              style: TextStyle(color: Colors.white),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TutorDetailsScreen()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
