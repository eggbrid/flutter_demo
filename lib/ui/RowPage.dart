import 'package:flutter/material.dart';

///横向
class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(children: <Widget>[
      Expanded(child: Text("第一条")),
      Expanded(child: Text("第二条")),
      Expanded(child: Text("第三条")),
      Expanded(child: Text("第四条")),
      Expanded(child: Text("第五条"))
    ]);
  }
}
