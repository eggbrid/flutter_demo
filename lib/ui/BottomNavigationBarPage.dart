import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BottomNavigationBarWidget();
}

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarWidget> {
  int _indexPos = 1;
  final _contentPage = [
    Center(child: Text("我是首页")),
    Center(child: Text("我是设置页"))
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("我是标题"),
        ),
        body: _contentPage.elementAt(_indexPos),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: new Text("首页"),
                activeIcon:
                    Icon(Icons.adjust, color: Color.fromARGB(255, 255, 0, 0))),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: new Text("设置"))
          ],
          currentIndex: _indexPos,
          fixedColor: Color.fromARGB(255, 255, 0, 0),
          onTap: _onItemClick,
        ));
  }

  void _onItemClick(int index) {
    setState(() {
      _indexPos = index;
    });
  }
}
