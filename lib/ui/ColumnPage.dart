import 'package:flutter/material.dart';

///纵向
class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("我时文字"),
        Text("我时文字"),
        Text("我时文字"),
        Text("我时文字"),
        Text("我时文字"),
        Text("我时文字"),
        Text("我时文字")
      ],
    );
  }
}
