import 'dart:html';

/**
 * 类的成员
 */
// Dart是支持基于mixin继承机制的面向对象语言,所有对象都是一个类的实例,所有的类都继承自Object类.
// 基于mixin的继承就意味着每个除Object类之外的类都有一个超类,一个类的代码可以在其他多个类继承中重复使用.
// Extension方法是一种在不更改类或者创建子类的情况下向类添加功能的方式.

// 🚀🚀 使用构造函数. 🚀🚀
// 可以使用 构造方法 来创建一个对象
// 构造函数的命名方式可以为【类名】或【类名.标识符】的形式.

// 1: 使用 Point() 和 Point.fromJson()两种构造器创建了对象

class Point {
  num x = 2;
  num y = 3;
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  // 一个toJson 方法,将 User 实例转化为一个map.
  Point.fromJson(Map<String, dynamic> json) {
    this.x = x;
    this.y = y;
  }
}

var p1 = new Point(2, 2);
// 一个toJson 方法,将 User 实例转化为一个map.
var p2 = new Point.fromJson({'x': 1, 'y': 2});

// 一些类提供了常量构造函数,使用常量构造函数,在构造函数名之前加 const 关键字, 来创建编译时常量的
// 🚀🚀 常量构造函数
class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
  final num x, y;
  const ImmutablePoint(this.x, this.y);
}

testCons() {
  var a = const ImmutablePoint(0, 0);
  var b = const ImmutablePoint(0, 0);
  print(identical(a, b)); // 它们是同一个实例 (They are the same instance!)

  // 根据使用 常量上下文 的场景，你可以省略掉构造函数或字面量前的 const 关键字。例如下面的例子中我们创建了一个常量 Map：
  const pointAndLine1 = const {
    'point': const [const ImmutablePoint(0, 0)],
    'line': const [const ImmutablePoint(0, 2), const ImmutablePoint(1, 9)]
  };
  // 可以简写成
  const pointAndLine2 = {
    'point': [ImmutablePoint(0, 0)],
    'line': [ImmutablePoint(0, 2), ImmutablePoint(1, 9)]
  };

  // 但是如果无法根据上下文判断是否可以省略 cosnt，则不能省略掉 const 关键字，否则将会创建一个 非常量对象 例如：
  var a1 = const ImmutablePoint(0, 0);
  var b1 = ImmutablePoint(0, 0);
  assert(!identical(a, b)); // true : 这两变量并不相同 (NOT the same instance!)
}
