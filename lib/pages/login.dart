import 'package:flutter/material.dart';

import 'analysis_home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(80),
              child: Text(
                'SpectrifyAI',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('User Name'),
            ),
            Container(
              // padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Password'),
            ),
            Container(
              //padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: pwdController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              textColor: Colors.blue,
              child: Text('Forgot Password ?'),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Sign In'),
                onPressed: () {
                  // print(nameController.text);
                  //  print(pwdController);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnalysisHome()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
