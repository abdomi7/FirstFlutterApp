import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Item1(
              link: "https://storage.googleapis.com/glaze-ecom.appspot.com/images/NuOJzFhXr/thumbs/232.png"),

          Item1(
              link: "https://storage.googleapis.com/glaze-ecom.appspot.com/images/NuOJzFhXr/thumbs/232.png"),

        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  final link;

  const Item1({Key? key, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 400,
        child: Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(8.0),
                topRight: const Radius.circular(8.0),
                bottomLeft: const Radius.circular(8.0),
                bottomRight: const Radius.circular(8.0),
              )),
          margin: const EdgeInsets.fromLTRB(18, 18, 18, 50),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Image.network(
                  'https://storage.googleapis.com/glaze-ecom.appspot.com/images/NuOJzFhXr/thumbs/232.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Text(
                'Enjoy a Healthy lifestyle',
                style: Theme
                    .of(context)
                    .textTheme
                    .headline6,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(18, 16, 18, 16),
                child: Text(
                  "Welcome to the present, we're running a real nation.",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

