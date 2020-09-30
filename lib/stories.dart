import 'package:barcodescan/data.dart';
import 'package:flutter/material.dart';


class Stories extends StatelessWidget {
  const Stories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Icon(Icons.camera_alt), Icon(Icons.email),],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index){
                  return
                    index==0?
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius:28,
                                backgroundColor: Colors.amber,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1485875437342-9b39470b3d95?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80'),
                                  radius: 26,
                                ),
                              ),
                              Positioned(
                                bottom:0,
                                right:0,
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.amber,
                                  child: Icon(Icons.add, size: 16,color: Colors.white,),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height:10),
                          Text('Me')
                        ],
                      ),
                    )

                    :Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius:32,
                          backgroundColor: Colors.amber,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(data[index-1]['avatar']),
                            radius: 30,
                          ),
                        ),
                        SizedBox(height:10),
                        Text(data[index-1]['first_name'])
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
      height: 156,
    );
  }
}
