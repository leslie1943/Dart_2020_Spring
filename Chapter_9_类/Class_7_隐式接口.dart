/**
 * 每一个类都隐式地定义了一个接口并实现了该接口，
 * 这个接口包含所有这个类的【实例成员】以及这个类所实现的其它接口。
 * 如果想要创建一个 A 类支持调用 B 类的 API 且不想继承 B 类，则可以实现 B 类的接口。
 */
// A要调用B类的API,但不继承B类 => 实现B类的接口

// 一个类可以通过关键字 implements 来实现一个或多个接口并实现每个接口定义的 API：

// // Person 类的隐式接口中包含 greet() 方法。
class Person {
  // _name 变量同样包含在接口中，但它只是库内可见的。
  final _name;
  // 构造函数不在接口中。
  Person(this._name);
  // greet() 方法在接口中。
  String greet(String who) {
    return ('hello $who,I am $_name');
  }
}

// Person 接口的一个实现。
class Impostor implements Person {
  get _name => '';

  @override
  String greet(String who) => 'Hello $who, do you know Who am I?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Leslie'))); // hello Bob,I am Leslie
  print(greetBob(Impostor())); // Hello Bob, do you know Who am I?
}

// 如果需要实现多个类接口，可以使用逗号分割每个接口类：
class Test implements Comparable, Impostor {
  @override
  // TODO: implement _name
  get _name => null;

  @override
  int compareTo(other) {
    // TODO: implement compareTo
    return null;
  }

  @override
  String greet(String who) {
    // TODO: implement greet
    return null;
  }
}
