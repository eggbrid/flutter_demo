///
///=============================================构造方式============================================
///
///
///若没有构造函数，会默认创建没有参数的构造函数，并且会调用超类的构造函数
///
///
class Size {
  num x, y; //可变变量
  bool isBo; //非必传参数
//  final num i;//不可变变量

//类似java的构造函数
//  Size(num nx, num y) {
//    x = nx;
//    this.y = y;
//  }
  //dart特有构造函数

  Size(this.y, this.x, {isUpdata: true}) {
    isBo = isUpdata;
  }

//另一种构造函数
  Size.fromJson(Map json) {
    this.x = json['x'];
    this.y = json['y'];
  }

  Size.formJsonInit(Map json)
      : this.x = json['x'],
        this.y = json['y'];
}

class MainClass {
  void run() {
    Map<String, num> map = new Map();
    map['x'] = 1;
    map['y'] = 2;
//    Size size = Size.fromJson(map);
//    Size size2 = new Size(1, 2, isUpdata: false);
  }
}

///================================================单例=================================================
///
///
///

class HttpCore {
  HttpCore._internal();

  factory HttpCore() {
    if (_instance == null) _instance = HttpCore._internal();
    return _instance;
  }

  static HttpCore _instance; //实例
  static HttpCore get instance => HttpCore();

  static HttpCore getInstance()=>HttpCore();


  void _request() {}
}

class Main {
  void run() {
    HttpCore.instance._request();
    HttpCore.getInstance()._request();
  }

}

///=================================抽象类==================================

abstract class CallBack{
  void prient(String messgae);
}

class HttpCallBack extends CallBack{
  @override
  void prient(String messgae) {
    // TODO: implement prient
  }

}
