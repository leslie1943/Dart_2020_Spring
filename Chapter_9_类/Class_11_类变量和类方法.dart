// 使用关键字 static 可以声明类变量或类方法。
import 'dart:math';

// 🚀🚀 静态变量
// 静态变量（即类变量）常用于声明类范围内所属的状态变量和常量：

class Queen {
  static const initialCapacity = 15;
}

// 🚖 静态变量在其首次被使用的时候才被初始化。
void testQueen() {
  assert(Queen.initialCapacity == 15);
}

// 🚀🚀 静态方法
// 静态方法（即类方法）不能被一个类的实例访问，同样地，静态方法内也不可以使用 this：

class Point {
  num x, y;
  Point(this.x, this.y);

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

// 对于一些通用或常用的静态方法，应该将其定义为顶级函数而非静态方法。
testStaticMethod() {
  var a = Point(4, 2);
  var b = Point(3, 2);
  var distance = Point.distanceBetween(a, b);
  print(distance);
}
// 可以将静态方法作为编译时常量。例如，你可以将静态方法作为一个参数传递给一个常量构造函数
