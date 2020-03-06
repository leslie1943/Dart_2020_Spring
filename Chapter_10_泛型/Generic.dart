// 如果你查看数组的 API 文档,你会发现数组 List 的实际类型为 List<E>.
// <..>表示数组是一个泛型
// 通常使用一个字母来代表类型参数,比如E、T、S、K 和 V 等等.

// 🚀🚀 为什么使用泛型
// 泛型常用于需要要求类型安全的情况,但是它也会对代码运行有好处
// 1.适当地指定泛型可以更好地帮助代码生成
// 2.使用泛型可以减少代码重复.
/**
 * 🚖🚖 比如你想声明一个只能包含 String 类型的数组,
 * 你可以将该数组声明为 List<String>（读作“字符串类型的 list”）,
 * 这样的话就可以很容易避免因为在该数组放入非 String 类变量而导致的诸多问题,
 * 同时编译器以及其他阅读代码的人都可以很容易地发现并定位问题
 */
testG1() {
  var names = List<String>();
  names.addAll(['A', 'B', 'C']);
  // names.add(1); // The argument type 'int' can't be assigned to the parameter type 'String'.dart(argument_type_not_assignable)
}

/**
 * 🚖🚖 Step_1: 另一个使用泛型的原因是可以减少重复代码.泛型可以让你在多个不同类型实现之间共享同一个接口声明,
 * 比如下面的例子中声明了一个类用于缓存对象的接口：
 */
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

// 🚖🚖 Step_2: 不久后你可能又会想专门为 String 类对象做一个缓存,于是又有了专门为 String 做缓存的类：
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

//  🚖🚖 Step_3: 如果过段时间你又想为数字类型也创建一个类,那么就会有很多诸如此类的代码……
// 这时候可以考虑使用泛型来声明一个类,让不同类型的缓存实现该类做出不同的具体实现即可：
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
// 在上述代码中,T 是一个替代类型.其相当于类型占位符,在开发者调用该接口的时候会指定具体类型.

// 🚀🚀 使用集合字面量
// List、Set 以及 Map 字面量也可以是参数化的。
// 定义参数化的 List 只需在中括号前添加 <type>；
// 定义参数化的 Map 只需要在大括号前添加 <keyType, valueType>：
testG2() {
  // List
  // var names = List<String>();
  // names.addAll(['A', 'B', 'C']);
  var names = <String>['A', 'B', 'C'];
  print(names);
  // Set
  var uniqueNames = <String>{'小芸', '小芳', '小民'};
  print(uniqueNames);
  // Map
  var pages = <String, String>{
    'index.html': '主页',
    'robots.txt': '网页机器人提示',
    'humans.txt': '我们是人类，不是机器'
  };
  print(pages);
}

// 🚀🚀 使用类型参数化的构造函数
// 在调用构造方法时也可以使用泛型，只需在类名后用尖括号（<...>）将一个或多个类型包裹即可：
testG3() {
  // List
  var names = <String>['A', 'B', 'C'];
  print(names);
  // 构造方法后使用<>
  var nameSet = Set<String>.from(names);
  print(nameSet);
  // 下面代码创建了一个键为 Int 类型，值为 View 类型的 Map 对象：
  var views = Map<int, View>();
}

class View {}

// 🚀🚀 泛型集合以及它们所包含的类型
// Dart的泛型类型是 固化的，这意味着即便在运行时也会保持类型信息：
testG4() {
  var names = List<String>();
  names.addAll(['A', 'B', 'C']);
  print(names is List<String>); // true
}
// 🚖🚖 与 Java 不同的是，Java 中的泛型是类型 擦除 的，这意味着泛型类型会在运行时被移除。
// 🚖🚖 在 Java 中你可以判断对象是否为 List 但不可以判断对象是否为 List<String>。

// 🚀🚀 限制参数化类型
// 有时使用泛型的时候可能会想限制泛型的类型范围，这时候可以使用 extends 关键字

class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  // detail implement
  String toString() => "'Foo<$T>'的实例";
}

class Extender extends SomeBaseClass {}

// 这时候就可以使用 【本类 SomeBaseClass】 或者【它的子类】来作为泛型参数
testG5() {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  var extenderFoo = Foo<Extender>();
  // 这时候也可以指定无参数的泛型，这时无参数泛型的类型则为 Foo<SomeBaseClass>
  var foo = Foo();
  print(foo); // Instance of 'Foo<SomeBaseClass>'

  // 将非 SomeBaseClass 的类型作为泛型参数则会导致编译错误：
  // var foo2 = Foo<Object>(); // 'Object' doesn't extend 'SomeBaseClass'.
}

// 🚀🚀 使用泛型方法
// 起初 Dart 只支持在类的声明时指定泛型，现在同样也可以在方法上使用泛型，称之为 泛型方法

T first<T>(List<T> ts) {
  // 处理一些初始化工作或错误检测……
  T tmp = ts[0];
  // 处理一些额外的检查……
  return tmp;
}
// 方法 first<T> 的泛型 T 可以在如下地方使用
// 1.函数的返回值类型 (T)。
// 2.参数的类型 (List<T>)。
// 3.局部变量的类型 (T tmp)。
