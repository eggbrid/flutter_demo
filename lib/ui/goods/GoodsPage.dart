import 'package:flutter/material.dart';

class GoodsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GoodsPageState();
  }
}

class GoodsPageState extends State<GoodsPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 249, 249),
          title: Text(
            "商品",
            style: TextStyle(color: Color.fromARGB(255, 68, 68, 68)),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
