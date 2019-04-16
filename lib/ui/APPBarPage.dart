import 'package:flutter/material.dart';

class APPBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _BasicAppBarSample();
}

class _BasicAppBarSample extends StatefulWidget {
  @override
  _BasicAppBarSampleState createState() => _BasicAppBarSampleState();
}

class _BasicAppBarSampleState extends State<_BasicAppBarSample> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(appBar: new AppBar(title: const Text("我是标题")));
  }
}
