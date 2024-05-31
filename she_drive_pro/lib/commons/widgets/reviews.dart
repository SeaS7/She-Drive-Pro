import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9F2067),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 400),
            child: ListView.separated(
              itemCount: _feedItems.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              itemBuilder: (BuildContext context, int index) {
                final item = _feedItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _AvatarImage(item.user.imageUrl),
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
                                      text: item.user.fullName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: " @${item.user.userName}",
                                      style:
                                          Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
                                    ),
                                  ]),
                                )),
                                Text('· 5m',
                                    style:
                                        Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white)),
                                
                              ],
                            ),
                            if (item.content != null) Text(item.content!,style: TextStyle(color: Colors.white),),
                            if (item.imageUrl != null)
                              Container(
                                height: 200,
                                margin: const EdgeInsets.only(top: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(item.imageUrl!),
                                    )),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
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
    user: _users[1],
    imageUrl: "https://picsum.photos/id/1001/960/540",
  ),
  FeedItem(
    user: _users[0],
    content:
        "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
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
        "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
    imageUrl: "https://picsum.photos/id/1004/960/540",
  ),
  FeedItem(
    user: _users[3],
    content:
        "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
  ),
  FeedItem(
    user: _users[0],
    content:
        "How many programmers does it take to change a light bulb? None, that’s a hardware problem.",
  ),
];
