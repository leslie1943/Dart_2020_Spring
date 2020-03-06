// 使用 Mixin 为类添加功能
// 使用 【with】 关键字并在其后跟上 【Mixin类】的名字来使用 Mixin 模式：

class Person {}

// 定义一个类继承自 Object 并且【不为】该类定义【构造函数】，这个类就是 Mixin 类
// 除非你想让该类与普通的类一样可以被正常地使用，否则可以使用关键字 mixin 替代 class 让其成为一个单纯的 Mixin 类：

// 以使用关键字 on 来指定哪些类可以使用该 Mixin 类，比如有 Mixin 类 A，但是 A 只能被 B 类使用，则可以这样定义 A
mixin Musical on Person {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;
  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
mixin Demented {}
mixin Aggressive {}

class Maestro extends Person with Musical, Aggressive, Demented {
  String name;
  bool canConduct;
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

/**
 * 
 */
