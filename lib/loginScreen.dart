import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 120, 0, 50),
              child: Image.network(
                'https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_flutter_icon_130599.png',
                height: 200,
                width: 200,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 18),
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
              )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 50),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 16),
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
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.grey,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Forget password? Tap me!'),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 25, 25, 16),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(8),
                  ),
                  onPressed: () {},
                  child: const Text('No Account? Sign Up'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
