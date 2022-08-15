import 'dart:ffi';

import 'package:flutter/material.dart';
import 'web_view_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _links =
      "https://b2bsso-test.axa.co.id/authorize/?response_type=code&scope=openid%20profile%20email%20offline_access&client_id=FCaZTGpjn2XPowIBQdOgS47fnT7gY5Oi&state=1234&audience=axa-id-ams&redirect_uri=http://localhost/";

  sampleFunction() {
    print('Function on Click Event Called.');
    // Put your code here, which you want to execute on onPress event.
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Enterprise Store"),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("Login"),
                  onPressed: () => _handleURLButtonPress(context, _links),
                  color: Color(0xFF000B89),
                  textColor: Colors.white,
                  splashColor: Colors.grey,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                )
              ],
            ))));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
