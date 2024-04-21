import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F2067),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 66.0),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 350),
              child: Column(
                children: [
                  /// -- IMAGE
                  SizedBox(
                    width: 180,
                    height: 180,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            image: AssetImage(
                          'assets/images/profile_img.png',
                        ))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Ahmed Saqib",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Email@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  _gap(),

                  /// -- BUTTON
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "Honda Civic | LEF-9087",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  _gap(),
                  _gap(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Vehicle Details:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        "Honda Civic | LEB-09_8976 | Black | 2009",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      _gap(),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Vehicle Details:",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Edit Details",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ))
                        ],
                      ),
                      const Text(
                        """License Number: LE-6734-21CNIC 
Number: 35202-xxxxx-xxxxx
Email: ahmed*******@gmail.com
Phone: +92-321-0987654""",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      _gap(),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Offer Your Rates:",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Edit Details",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ))
                        ],
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 8 / 3,
                        children: [
                          Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Sarting From',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                  Text(
                                    '12,000/Week',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Sarting From',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                  Text(
                                    '12,000/Week',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Sarting From',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                  Text(
                                    '12,000/Week',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 165,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Text(
                                    'Sarting From',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                  Text(
                                    '12,000/Week',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff9F2067),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      _gap(),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           SizedBox(
                            width: 165,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Unavalible',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                         
                           SizedBox(
                            width: 165,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Avalible',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color:Colors.black,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      _gap(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}
