class MyFunction {
  main() {
    say("测试");

    say("测试2", word: "hello~");
  }

  /**
   * name: 必传参数
   * word 可选参数
   *
   *
   */
  void say(String name, {String word = 'hello'}) {
    print('$name say $word');
  }
}
