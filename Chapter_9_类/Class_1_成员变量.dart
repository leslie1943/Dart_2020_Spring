/**
 * 类的成员
 */
// Dart是支持基于mixin继承机制的面向对象语言,所有对象都是一个类的实例,所有的类都继承自Object类.
// 基于mixin的继承就意味着每个除Object类之外的类都有一个超类,一个类的代码可以在其他多个类继承中重复使用.
// Extension方法是一种在不更改类或者创建子类的情况下向类添加功能的方式.

// 🚀🚀 使用类的成员. 🚀🚀
// 对象的【成员】由【函数】和【数据】(【方法】和【实例变量】)组成
// 方法的调用要通过对象来完成,这种方式可以访问对象的函数和数据
// 使用(.)来访问对象的实例变量或者方法.

class Point {
  num x;
  num y;
  Point(num x, num y) {
    this.x = x;
    this.y = y;
  }
  num distanceTo() {
    return this.x + this.y;
  }
}

testClass1() {
  var p = Point(2, 3);
  assert(p.y == 3); // true
  num distance = p.distanceTo();
  print('distance:$distance');
}

// 使用【?.】代替【.】可以避免左边表达式为null而导致的问题.
// 如果 p 为非空则将其属性 y 的值 设置为4
// p?.y = 4
