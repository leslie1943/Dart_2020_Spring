/**
 * 实例变量
 */
// Dart是支持基于mixin继承机制的面向对象语言,所有对象都是一个类的实例,所有的类都继承自Object类.
// 基于mixin的继承就意味着每个除Object类之外的类都有一个超类,一个类的代码可以在其他多个类继承中重复使用.
// Extension方法是一种在不更改类或者创建子类的情况下向类添加功能的方式.

class Point {
  num x; // 声明实例变量 x 并初始化为 null。
  num y; // 声明实例变量 y 并初始化为 null。
  // num z = 0; // 声明实例变量 z 并初始化为 0。
}
// 所有未初始化的实例变量的值为null
// 所有的实例变量会隐式的声明一个Getter方法,非final类型的实例变量还会隐式的声明一个Setter方法

void main() {
  var p = Point();
  p.x = 4; // 使用x的Setter方法
  assert(p.x == 4); // 使用x的Getter方法
  assert(p.y == null); // 默认值为null
}
// 如果你在声明一个实例变量的时候就将其初始化（而不是在构造函数或其它方法中），
// 那么该实例变量的值就会在对象实例创建的时候被设置，该过程会在构造函数以及它的初始化器列表执行前。
