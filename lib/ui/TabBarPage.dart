import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
        length: models.length, child: new _TabBarWidget());
  }
}

class _TabBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<_TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("tabBar demo"),
            bottom: new TabBar(
                tabs: models.map((TabModel tab) {
                  return new Tab(text: tab.title);
                }).toList(),
                labelColor: Color.fromARGB(255, 255, 255, 255),
                indicatorColor: Color.fromARGB(255, 255, 255, 255))),
        body: new TabBarView(
          children: models.map((TabModel tab) {
            return new Center(child: new Text(tab.content));
          }).toList(),
        ));
  }
}

//设置tabBar数据模型
const List<TabModel> models = const <TabModel>[
  const TabModel(title: "第一页", content: "我是第一页内容"),
  const TabModel(title: "第二页", content: "我是第二页内容")
];

//tabbar模型
class TabModel {
  const TabModel({this.title, this.content});

  final String title;
  final String content;
}
