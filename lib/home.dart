import 'package:barcodescan/data.dart';
import 'package:barcodescan/posts.dart';
import 'package:barcodescan/stories.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stories(),
            Divider(),
            Expanded(
                child: Posts(),)
          ],
        ),
      ),
    );
  }
}

