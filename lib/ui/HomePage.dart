import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xus_demo/ui/goods/GoodsPage.dart';
import 'package:xus_demo/ui/home/IndexPage.dart';
import 'package:xus_demo/ui/message/MessagePage.dart';

///  首页
///  所有程序的入口

class HomePageState extends State<HomePage> {
  int _indexPos = 0;

  final pages = <Widget>[
    Center(child: new IndexPage()),
    Center(child: new Text("订单")),
    Center(child: new MessagePage()),
    Center(child: new Text("客户")),
    Center(child: new GoodsPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        child: Scaffold(
          body: pages[_indexPos],
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home,
                      size: 24, color: Color.fromARGB(255, 255, 127, 0)),
                  icon: Icon(Icons.home,
                      size: 24, color: Color.fromARGB(255, 102, 102, 102)),
                  title: Text("首页", style: TextStyle(fontSize: 14))),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.assignment,
                      size: 24, color: Color.fromARGB(255, 255, 127, 0)),
                  icon: Icon(Icons.assignment,
                      size: 24, color: Color.fromARGB(255, 102, 102, 102)),
                  title: Text("订单", style: TextStyle(fontSize: 14))),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.message,
                      size: 24, color: Color.fromARGB(255, 255, 127, 0)),
                  icon: Icon(Icons.message,
                      size: 24, color: Color.fromARGB(255, 102, 102, 102)),
                  title: Text("消息", style: TextStyle(fontSize: 14))),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.group,
                      size: 24, color: Color.fromARGB(255, 255, 127, 0)),
                  icon: Icon(Icons.group,
                      size: 24, color: Color.fromARGB(255, 102, 102, 102)),
                  title: Text("客户", style: TextStyle(fontSize: 14))),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.shopping_basket,
                      size: 24, color: Color.fromARGB(255, 255, 127, 0)),
                  icon: Icon(Icons.shopping_basket,
                      size: 24, color: Color.fromARGB(255, 102, 102, 102)),
                  title: Text("商品", style: TextStyle(fontSize: 14)))
            ],
            currentIndex: _indexPos,
            iconSize: 24,
            fixedColor: Color.fromARGB(255, 255, 127, 0),
            type: BottomNavigationBarType.fixed,
            onTap: _onItemClick,
          ),
        ),
        onWillPop: () {
          Navigator.pop(context);
          Navigator.of(context).pop();
          SystemNavigator.pop();
        });
  }

  void _onItemClick(int index) {
    setState(() {
      _indexPos = index;
    });
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}
