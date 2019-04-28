import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
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
    return new SafeArea(
        child: new Scaffold(
            appBar: new TabBar(
                tabs: models.map((TabModel tab) {
                  return new Tab(text: tab.title);
                }).toList(),
                labelColor: Color.fromARGB(255, 255, 127, 0),
                indicatorColor: Color.fromARGB(255, 255, 127, 0)),
            body: new TabBarView(
              children: models.map((TabModel tab) {
                return new Center(child: new Text(tab.content));
              }).toList(),
            )));
  }
}

//设置tabBar数据模型
const List<TabModel> models = const <TabModel>[
  const TabModel(title: "聊天消息", content: "我是第一页内容"),
  const TabModel(title: "系统通知", content: "我是第二页内容"),
  const TabModel(title: "促销快讯", content: "我是第二页内容")
];

//tabbar模型
class TabModel {
  const TabModel({this.title, this.content});

  final String title;
  final String content;
}
