import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final int id;
  final String title;
  final body;

  const UserInfo(
      {Key? key, required this.id, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(id.toString()),
              Text(title),
              Text(body),
            ],
          ),
        ),
      ),
    );
  }
}
