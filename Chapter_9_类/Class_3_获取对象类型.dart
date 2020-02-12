/**
 */
// Dart是支持基于mixin继承机制的面向对象语言,所有对象都是一个类的实例,所有的类都继承自Object类.
// 基于mixin的继承就意味着每个除Object类之外的类都有一个超类,一个类的代码可以在其他多个类继承中重复使用.
// Extension方法是一种在不更改类或者创建子类的情况下向类添加功能的方式.

// 使用Object对象的runtimeType属性可以在运行时获取对象的类
class Point {}

testType() {
  var p = Point();
  print('the type of p is ${p.runtimeType}'); // the type of p is Point
}
