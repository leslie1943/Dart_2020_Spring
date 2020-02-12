// Dart是支持基于mixin继承机制的面向对象语言,所有对象都是一个类的实例,所有的类都继承自Object类.
// 基于mixin的继承就意味着每个除Object类之外的类都有一个超类,一个类的代码可以在其他多个类继承中重复使用.
// Extension方法是一种在不更改类或者创建子类的情况下向类添加功能的方式.

// 声明一个与类名一样的函数即可声明一个构造函数（对于命名式构造函数还可以添加额外的标识符）。
// 大部分的构造函数形式是生成式构造函数，其用于创建一个类的实例

class Point1 {
  num x;
  num y;
  // ❤构造函数
  Point1(num x, num y) {
    // 使用 this 关键字引用当前实例。
    // 当且仅当命名冲突时使用 this 关键字才有意义，否则 Dart 会忽略 this 关键字
    this.x = x;
    this.y = y;
  }
}

class Point2 {
  num x;
  num y;
  // 对于大多数编程语言来说在构造函数中为实例变量赋值的过程都是类似的
  // 而 Dart 则提供了一种特殊的语法糖来简化该步骤：
  // 在构造函数体执行前用于设置 x 和 y 的语法糖。
  Point2(this.x, this.y);
}

// 🚀🚀 默认构造函数
// 😀 如果你没有声明构造函数，那么 Dart 会自动生成一个无参数的构造函数并且该构造函数会调用其父类的无参数构造方法。
// 😀 构造函数不被继承
// 😀 子类不会继承父类的构造函数，如果子类没有声明构造函数，那么只会有一个默认无参数的构造函数。

// 🚀🚀 命名式构造函数
// 可以为一个类声明【多个】命名式构造函数来表达更明确的意图

class Point3 {
  num x;
  num y;
  Point3(this.x, this.y);
  // 命名式构造方法
  Point3.origin() {
    x = 0;
    y = 0;
  }
  Point3.init() {
    x = 1;
    y = 2;
  }
}
// 记住构造函数是不能被继承的，这将意味着子类不能继承父类的命名式构造函数，
// 如果你想在子类中提供一个与父类命名构造函数名字一样的命名构造函数，则需要在子类中显式地声明。

// 🚀🚀 调用父类非默认构造函数
// 默认情况下，子类的构造函数会调用父类的匿名无参数构造方法，并且该调用会在子类构造函数的函数体代码执行前，
// 如果子类构造函数还有一个初始化列表，
// 那么该初始化列表会在调用父类的该构造函数之前被执行，总的来说，这三者的调用顺序如下：
// 1.初始化列表
// 2.父类的无参数构造函数
// 3.当前类的构造函数

// 如果父类没有匿名无参数构造函数，那么子类必须调用父类的其中一个构造函数，
// 为子类的构造函数指定一个父类的构造函数只需在构造函数体前使用（:）指定。

class Person {
  String firstName;
  Person.fromJson(Map data) {
    print('in person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

main() {
  var emp = Employee.fromJson({});
  // prints:
  // in Person
  // in Employee
  if (emp is Person) {
    emp.firstName = 'Bob';
  }
  (emp as Person).firstName = 'Bob';
}
// 因为参数会在子类构造函数被执行前传递给父类的构造函数，因此该参数也可以是一个表达式

// 🚖 传递给父类构造函数的参数不能使用 this 关键字，因为在参数传递的这一步骤，子类构造函数尚未执行，
// 🚖 子类的实例对象也就还未初始化，因此所有的实例成员都不能被访问，但是类成员可以。

// 🚀🚀 初始化列表
// 除了调用父类构造函数之外，还可以在构造函数体执行之前初始化实例变量。每个实例变量之间使用逗号分隔。
// Point1.fromJson(Map<String,num> json)
//   : x = json['x'],y=json['y']{
//   print('in Point1.fromJson():($x,$y)');
// }
// 🚖 初始化列表表达式 = 右边的语句不能使用 this 关键字。

// 🚀🚀 重定向构造函数
// 有时候类中的构造函数会调用类中其它的构造函数，该重定向构造函数没有函数体，
// 只需在函数签名后使用（:）指定需要重定向到的其它构造函数即可
class Point4 {
  num x, y;
  // 该类的主构造函数。
  Point4(this.x, this.y);
  // 委托实现给主构造函数。
  Point4.alongXAxis(num x) : this(x, 0);
}

// 🚀🚀 常量构造函数
// 如果类生成的对象都是不会变的，那么可以在生成这些对象时就将其变为编译时常量。
// 你可以在类的构造函数前加上 const 关键字并确保所有实例变量均为 final 来实现该功能
class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);
  final num x, y;
  const ImmutablePoint(this.x, this.y);
}
// 常量构造函数创建的实例并不总是常量

// 🚀🚀 工厂构造函数
// 使用 factory 关键字标识类的构造函数将会令该构造函数变为工厂构造函数，
// 这将意味着使用该构造函数构造类的实例时并非总是会返回新的实例对象。
// 例如，工厂构造函数可能会从缓存中返回一个实例，或者返回一个子类型的实例。

class Logger {
  // 变量
  final String name;
  bool mute = false;
  // _cache 变量是库私有的，因为在其名字前面有下划线。
  static final Map<String, Logger> _cache = <String, Logger>{};
  // 工厂构造函数.
  factory Logger(String name) {
    // 🚖 在工厂构造函数中无法访问 this。
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }
  // 类的其他命名式构造函数
  Logger._internal(this.name);
  // 实例方法
  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

// 工厂构造函的调用方式与其他构造函数一样：
testFactory() {
  var logger = Logger('UI'); // 调用构造方法返回一个对象
  print(logger.runtimeType); // Logger
  print(logger); // Instance of 'Logger'
  logger.log('Button clicked');
}
