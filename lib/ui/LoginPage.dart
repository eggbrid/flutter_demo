import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Color.fromARGB(255, 249, 249, 249),
          title: Text(
            "用户登陆",
            style: TextStyle(color: Color.fromARGB(255, 68, 68, 68)),
          ),
          centerTitle: true,

        ),
        body: new LoginBodyPage(),
      ),


    );
  }
}

class LoginBodyPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginBodyPageState();
  }
}

class LoginBodyPageState extends State<LoginBodyPage> {
  TextEditingController _phoneController =
  TextEditingController(); //定义一个输入框的controller
  TextEditingController _passWordController = TextEditingController(); //密码

  FocusNode _phoneNode = FocusNode();
  FocusNode _passWordNode = FocusNode();
  String phone = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: <Widget>[
        TextField(controller: _phoneController, focusNode: _phoneNode,decoration: InputDecoration(labelText: "手机号",hintText: "请输入手机号"),keyboardType: TextInputType.number),
        TextField(controller: _passWordController, focusNode: _passWordNode,decoration: InputDecoration(labelText: "密码",hintText: "请输入密码"),obscureText: true),
          RaisedButton(
            onPressed: (){
              _readyToLoagin();
            },
            child: Center(child: Text("登录"),),

          ),
      ],
    ),);
  }


  _readyToLoagin(){
    Fluttertoast.showToast(
        msg: "请输入账号密码",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
    );
  }
}
