// 方法是对象提供行为的函数。

// 🚀🚀 实例方法: 对象的实例方法可以访问实例变量和 this

import 'dart:math';

class Point {
  num x, y;
  Point(this.x, this.y);

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

// 🚀🚀 Getter 和 Setter
// Getter 和 Setter 是一对用来读写对象属性的特殊方法，
// 上面说过实例对象的每一个属性都有一个隐式的 Getter 方法，
// 如果为非 final 属性的话还会有一个 Setter 方法，
// 你可以使用 get 和 set 关键字为额外的属性添加 Getter 和 Setter 方法：
class Rectangle {
  num left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);
  // 定义2个计算产生的属性: right 和 bottom
  num get right => left + width;
  set right(num value) => left = value - width;

  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

// 使用 Getter 和 Setter 的好处是，你可以先使用你的实例变量，
// 过一段时间过再将它们包裹成方法且不需要改动任何代码，即先定义后更改且不影响原有逻辑。
void main() {
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);
}

// 🚖 像自增（++）这样的操作符不管是否定义了 Getter 方法都会正确地执行。
// 🚖 为了避免一些不必要的异常情况，运算符只会调用 Getter 一次，然后将其值存储在一个临时变量中。

// 🚀🚀 抽象方法
// 实例方法、Getter 方法以及 Setter 方法都可以是抽象的，
// 定义一个接口方法而不去做具体的实现让实现它的类去实现该方法，抽象方法只能存在于抽象类中。
// 直接使用分号（;）替代方法体即可声明一个抽象方法：

abstract class Doer {
  void doSomething(); // 定义一个抽象方法。
}

class EffectiveDoer extends Doer {
  @override
  void doSomething() {
    print('child do something');
  }
}

// 使用关键字 abstract 标识类可以让该类成为 抽象类，抽象类将无法被实例化。抽象类常用于声明接口方法、
// 有时也会有具体的方法实现。如果想让抽象类同时可被实例化，可以为其定义工厂构造函数。
// 该类被声明为抽象的，因此它不能被实例化。
abstract class AbstractContainer {
  // 定义构造函数、字段、方法等……

  void updateChildren(); // 抽象方法。
}
