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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Icon(Icons.camera_alt), Icon(Icons.email),],
          ),
          Container(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 30,
                        ),
                        Text('name')
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
      height: 150,
    );
  }
}
