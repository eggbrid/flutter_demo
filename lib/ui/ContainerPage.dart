import 'package:flutter/material.dart';
///这个类似div
class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
        child: new Container(
      constraints: BoxConstraints.expand(width: 200, height: 2000),
      color: Color.fromARGB(255, 255, 33, 44),
      child: Text('this is Container',
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.white)),
    ));
  }
}
