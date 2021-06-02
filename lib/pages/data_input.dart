import 'package:flutter/material.dart';

class DataInput extends StatefulWidget {
  @override
  _DataInputState createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Data Input'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          bottom: TabBar(
            tabs: [Tab(text: "Sensor Data"), Tab(text: "Camera Data")],
          ),
        ),
      ),
    );
  }
}
