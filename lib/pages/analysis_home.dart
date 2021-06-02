import 'package:flutter/material.dart';

import 'data_input.dart';

class AnalysisHome extends StatefulWidget {
  @override
  _AnalysisHomeState createState() => _AnalysisHomeState();
}

class _AnalysisHomeState extends State<AnalysisHome> {
  @override
  Widget build(BuildContext context) {
    var _checked = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Analysis Home'),
      ),
      body: ListView(
        children: [
          Spacer(),
          Text(
            '     ➊ Select what you want to Analyse',
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/tea.jpg',
                semanticLabel: 'Dash mascot',
              ),
              // Spacer(),
              // Image.asset('assets/images/herbs.jpg'),
            ],
          ),
          Text('     ➋ Setup Your Device'),
          Spacer(),
          FlatButton(
            onPressed: () {},
            color: Colors.black,
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Icon(Icons.bluetooth),
                Text("Scan Avaliable Devices"),
              ],
            ),
          ),
          Spacer(),
          CheckboxListTile(
            title: Text('BLE Data Sampling Device'),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked,
            onChanged: (bool value) {
              setState(() {
                _checked = value;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.black,
          ),
          CheckboxListTile(
            title: Text('BLE Data Sampling Device 002'),
            controlAffinity: ListTileControlAffinity.leading,
            value: _checked,
            onChanged: (bool value) {
              setState(() {
                _checked = value;
              });
            },
            activeColor: Colors.green,
            checkColor: Colors.black,
          ),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.blue,
            child: Text('Continue to Data Input'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DataInput()),
              );
            },
          ),
        ],
      ),
    );
  }
}
