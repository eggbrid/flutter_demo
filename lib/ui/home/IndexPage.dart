import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 238, 238, 238),
      child: Column(
        children: <Widget>[
          Container(
//设置背景图片
            padding:
                new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            constraints: BoxConstraints.expand(height: 210),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: new AssetImage("images/ic_home_top_bg.png"),
//这里是从assets静态文件中获取的，也可以new NetworkImage(）从网络上获取
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: new EdgeInsets.all(10),
                  alignment: Alignment(-1, -1),
                  child: Icon(Icons.add_call,
                      color: Color.fromARGB(255, 255, 255, 255), size: 30),
                )),
                Container(
                  padding: new EdgeInsets.only(top: 50),
                  child: Column(
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundImage: new NetworkImage(
                            "https://b-ssl.duitang.com/uploads/item/201810/27/20181027203952_xqiwv.jpg"),
                        radius: 40, // --> 半径越大，图片越大
                      ),
                      Container(
                        margin: new EdgeInsets.only(top: 20),
                        child: Text("测试店铺",
                            style: new TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 13)),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  padding: new EdgeInsets.all(10),
                  alignment: Alignment(1, -1),
                  child: Icon(Icons.settings,
                      color: Color.fromARGB(255, 255, 255, 255), size: 30),
                )),
              ],
            ),
          ),
          Container(
              color: Color.fromARGB(255, 238, 238, 238),
              constraints: BoxConstraints.expand(height: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 0, top: 5, right: 2, bottom: 0),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_order.png",
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "待发货订单",
                            style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 2, top: 5, right: 0, bottom: 0),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_bill.png",
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "待结算账单",
                            style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              )),
          Container(
              color: Color.fromARGB(255, 238, 238, 238),
              constraints: BoxConstraints.expand(height: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 0, top: 5, right: 2, bottom: 0),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_refund.png",
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "待处理退款",
                            style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 2, top: 5, right: 0, bottom: 0),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_return_goods.png",
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "待处理退货",
                            style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              )),
          Container(
              color: Color.fromARGB(255, 238, 238, 238),
              constraints: BoxConstraints.expand(height: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 0, top: 5, right: 2, bottom: 0),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_sale_goods.png",
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "出售中商品",
                            style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                        ],
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.only(left: 2, top: 5, right: 0, bottom: 0),
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 255, 255, 255),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Image.asset(
                            "images/ic_message.png",
                            width: 60,
                            height: 60,
                          ),
                          Text(
                            "待回复消息",
                            style: new TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 67, 67, 67)),
                          ),
                        ],
                      )),
                    ),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
