class Member {
  int i = 0; //【-2^53 ~ 2^53】
  double j = 0.01; //[64浮点类型]
  static String str = "aaa"; //单双引号都可以修饰字符串
  static String strD = 'aaaa';
  String strLine = '''
  line1
  line2
  '''; //可以通过三个单引号和三个双引号修饰一个多行字符串
  String noZY = r"\n . "; //可以通过r来控制字符串是否需要转移，带r修饰的是不转义字符串
  bool b = true; //布尔类型
  bool c = strD == str; //字符串相等判断
//list
  var lists = [1, 2, 3, 4];
  var lists2 = const [1, 2, 3, 4];
  var strLists = <String>['1', '2', '3', '4'];

  //maps
  var map = <String, int>{'one': 1, 'two': 2};
}
