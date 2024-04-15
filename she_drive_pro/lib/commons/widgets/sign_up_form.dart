import 'package:flutter/material.dart';
import 'package:she_drive_pro/screens/tutor_detail.dart';

class SignUpFormContent extends StatefulWidget {
  const SignUpFormContent({Key? key}) : super(key: key);

  @override
  State<SignUpFormContent> createState() => _SignUpFormContentState();
}

class _SignUpFormContentState extends State<SignUpFormContent> {
  bool _isPasswordVisible = false;
  bool _isPasswordConfirmVisible = false;
  String password = '';

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
                "Register Now!",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
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
                  Icons.person,
                  color: Colors.white,
                ),
                labelText: 'Username',
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                // add email validation
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value);
                if (!emailValid) {
                  return 'Please enter a valid email';
                }

                return null;
              },
              style: const TextStyle(color: Colors.white, decoration: null),
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                iconColor: Colors.white,
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
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
              ),
            ),
            _gap(),
            TextFormField(
              validator: (value) {
                password = value!;
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              obscureText: !_isPasswordVisible,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(color: Colors.black), // Add this line
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red), // Add this line
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red), // Add this line
                  ),
                  iconColor: Colors.white,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelStyle: const TextStyle(color: Colors.white),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )),
            ),
            _gap(),
            TextFormField(
              obscureText: !_isPasswordConfirmVisible,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(color: Colors.black), // Add this line
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red), // Add this line
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red), // Add this line
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelStyle: const TextStyle(color: Colors.white),
                  prefixIcon: const Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.white,
                  ),
                  labelText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordConfirmVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordConfirmVisible = !_isPasswordConfirmVisible;
                      });
                    },
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                if (value != password) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
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
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TutorDetailsScreen()));
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
