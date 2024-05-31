import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:she_drive_pro/commons/widgets/reviews.dart';

class TutorInfo extends StatelessWidget {
  const TutorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: SizedBox(
        height: 60,
        width: 150.0,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: const Text(
            'BOOK NOW!',
            style: TextStyle(
              color: Color(0xff9F2067),
              fontSize: 18
            ),
          ),
          onPressed: () {},
        ),
      ),
      backgroundColor: const Color(0xff9F2067),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 66.0),
          child: Center(
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                    Icon(Icons.star, color: Colors.white, size: 20),
                  ],
                ),
                _gap(),
                _gap(),
                Container(
                  constraints: const BoxConstraints(maxWidth: 350),
                  child: Column(
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
                      const Text(
                        "Offered Packages:",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Text(
                        "(Custom Packages Available)",
                        style: TextStyle(color: Colors.white),
                      ),
                      _gap(),
                      Column(
                    
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
                             
                            ],
                          ),
                        _gap(),
                         Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
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
                             
                            ],
                          ),
                        ],
                      ),
                      _gap(),
                      const Divider(),
                    ],
                  ),
                ),
                const Text(
                  "Reviews:",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                _gap(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _AvatarImage(_feedItems[0].user.imageUrl),
                    const SizedBox(width: 16),
                    Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Expanded(
                          child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                          TextSpan(
                            text: _feedItems[0].user.fullName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white), // Modified text color to white
                          ),
                          TextSpan(
                            text: " @${_feedItems[0].user.userName}",
                            style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white), // Modified text color to white
                          ),
                          ]),
                        )),
                        Text('· 5m',
                          style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)), // Modified text color to white
                        
                        ],
                      ),
                      if (_feedItems[0].content != null)
                        Text(_feedItems[0].content!, style: const TextStyle(color: Colors.white)), // Modified text color to white
                      if (_feedItems[0].imageUrl != null)
                        Container(
                        height: 200,
                        margin: const EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                              NetworkImage(_feedItems[0].imageUrl!),
                          )),
                        ),
                      ],
                    ),
                    ),
                  ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _AvatarImage(_feedItems[1].user.imageUrl),
                    const SizedBox(width: 16),
                    Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Expanded(
                          child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                          TextSpan(
                            text: _feedItems[1].user.fullName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white), // Modified text color to white
                          ),
                          TextSpan(
                            text: " @${_feedItems[1].user.userName}",
                            style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white), // Modified text color to white
                          ),
                          ]),
                        )),
                        Text('· 5m',
                          style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)), // Modified text color to white
                        
                        ],
                      ),
                      if (_feedItems[1].content != null)
                        Text(_feedItems[0].content!, style: const TextStyle(color: Colors.white)),
                            if (_feedItems[1].imageUrl != null)
                              Container(
                                height: 200,
                        margin: const EdgeInsets.only(top: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                              NetworkImage(_feedItems[1].imageUrl!),
                          )),
                        ),
                      ],
                    ),
                    ),
                  ],
                  ),
                ),
                 OutlinedButton(
                  style:  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const Reviews());
                  },
                  child: const Text(
                    "Read All Reviews...",
                    style: TextStyle(color: Color(0xff9F2067), fontSize: 11),
                  )),
                    _gap()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}

class _AvatarImage extends StatelessWidget {
  final String url;
  const _AvatarImage(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(url))),
    );
  }
}

class FeedItem {
  final String? content;
  final String? imageUrl;
  final User user;

  FeedItem({
    this.content,
    this.imageUrl,
    required this.user,
  });
}

class User {
  final String fullName;
  final String imageUrl;
  final String userName;

  User(
    this.fullName,
    this.userName,
    this.imageUrl,
  );
}

final List<User> _users = [
  User(
    "John Doe",
    "john_doe",
    "https://picsum.photos/id/1062/80/80",
  ),
  User(
    "Jane Doe",
    "jane_doe",
    "https://picsum.photos/id/1066/80/80",
  ),
  User(
    "Jack Doe",
    "jack_doe",
    "https://picsum.photos/id/1072/80/80",
  ),
  User(
    "Jill Doe",
    "jill_doe",
    "https://picsum.photos/id/133/80/80",
  )
];

final List<FeedItem> _feedItems = [
  FeedItem(
    content:
        "A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!",
    user: _users[0],
    imageUrl: "https://picsum.photos/id/1000/960/540",
  ),
  FeedItem(
    user: _users[3],
    content:
        "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
  ),
  FeedItem(
    user: _users[1],
    content:
        "A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!",
    imageUrl: "https://picsum.photos/id/1001/960/540",
  ),
  FeedItem(
    user: _users[1],
    content:
        "Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning.",
  ),
  FeedItem(
    user: _users[2],
    content: "Good morning!",
  ),
  FeedItem(
    user: _users[1],
    content:
        "A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!",
  ),
  FeedItem(
    user: _users[3],
    content:
        "A son asked his father (a programmer) why the sun rises in the east, and sets in the west. His response? It works, don’t touch!",
  ),
  FeedItem(
    user: _users[0],
    imageUrl: "https://picsum.photos/id/1006/960/540",
  ),
];
