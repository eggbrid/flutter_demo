import 'package:flutter/material.dart';
import 'package:xus_demo/ui/HomePage.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SpalashPageState();
  }
}

class SpalashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Image.asset("images/ic_guide.png"),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _countDown();
  }

  void _countDown() {
    var m = new Duration(seconds: 3);
    new Future.delayed(m, _goHome);
  }

  void _goHome() {
    Navigator.of(context).pop(context);
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new HomePage();
    }));
  }
}
