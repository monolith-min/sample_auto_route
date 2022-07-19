import 'package:flutter/material.dart';

import 'main.dart';

class ThirdPage extends StatelessWidget {
  static const routeName = '/extractArguments';
  final ScreenArguments data;
  const ThirdPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThirdScreen'),
      ),
      body: Container(
        child: Text("title : ${data.title}   message : ${data.message}"),
      ),
    );
  }
}
