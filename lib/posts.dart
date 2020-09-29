import 'package:barcodescan/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1485875437342-9b39470b3d95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80'),
                  ),
                  title: Text('John Martinez'),
                  subtitle: Text('Central Park, NYC'),
                  trailing: Icon(Icons.more_vert),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        posts[index],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 180,
                        color: Colors.black.withOpacity(0.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.favorite_border),
                                Image.asset(
                                  'assets/send.png',
                                  height: 30,
                                  color: Colors.white,
                                ),
                                SvgPicture.asset(
                                  'assets/message_icon.svg',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Icon(Icons.bookmark_border)
                              ],
                            ),
                            Stack(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.red.withOpacity(0.5),
                                  radius: 28,
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.amber,
                                    backgroundImage: NetworkImage(data[4]['avatar']),

                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red.withOpacity(0.5),
                                    radius: 28,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.amber,
                                      backgroundImage: NetworkImage(data[0]['avatar']),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 60,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red.withOpacity(0.5),
                                    radius: 28,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.amber,
                                      backgroundImage: NetworkImage(data[3]['avatar']),

                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 90,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red.withOpacity(0.5),
                                    radius: 28,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.amber,
                                      backgroundImage: NetworkImage(data[2]['avatar']),

                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: RichText(
                                      text: TextSpan(text: 'liked ',
                                          style: TextStyle(color: Colors.white70),
                                          children: [
                                        TextSpan(text: 'yanna_summer ',
                                          style: TextStyle(color: Colors.white),),
                                        TextSpan(text: 'and '),
                                        TextSpan(text: '12k others',
                                          style: TextStyle(color: Colors.white),)
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            RichText(text: TextSpan(text: 'lana_smith ',
                            style: TextStyle(fontSize: 16),
                            children: [
                              TextSpan(
                                text: 'Let me know what you think-',
                                style: TextStyle(color: Colors.white70, fontSize: 14)
                              ),
                              TextSpan(
                                  text: '#cringey',
                                  style: TextStyle(color: Colors.amber, fontSize: 14)
                              ),
                            ]),)
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 0,
                      bottom: -10,
                      child: Container(
                        height: 50,
                        color: Colors.black12,
                        child: RichText(text: TextSpan(
                          text: 'View all comments',
                          children: [
                            TextSpan(text:'(13)', style: TextStyle(color: Colors.amber))
                          ]
                        )),
                      ),
                    )
                  ],
                )
              ],
            );
          }),
    );
  }
}
