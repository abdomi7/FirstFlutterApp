import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
                bottomLeft: const Radius.circular(40.0),
                bottomRight: const Radius.circular(40.0),
              )),
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.fromLTRB(50, 100, 50, 100),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 100, 0, 16),
                child: Image.network(
                  'https://storage.googleapis.com/glaze-ecom.appspot.com/images/NuOJzFhXr/thumbs/232.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Text(
                'Enjoy a Healthy lifestyle',
                style: Theme.of(context).textTheme.headline6,
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
              Container(
                margin: const EdgeInsets.fromLTRB(25, 50, 25, 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(8),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );

                    },
                    child: const Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

