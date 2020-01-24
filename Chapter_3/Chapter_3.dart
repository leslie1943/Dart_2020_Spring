/**
 * Variables: 变量
 */
void test() {
  var name1 = 'Bob';
  // 变量仅存储对象的引用. 这里名为name1的变量存储了一个String类型对象的引用. "Bob"是对象的值.
  // name 变量的类型被推断为String,但是可以为其指定类型. 如果一个对象的引用不局限于单一的类型,可以将其指定为Objec或者dynamic

  dynamic name2 = 'Bob';

  String name3 = 'Bob';

  // 🏳‍🌈🏳‍🌈🏳‍🌈 默认值 🏳‍🌈🏳‍🌈🏳‍🌈
  // 在Dart中,未初始化的变量拥有一个默认的初始值 null. 即便数字也是如此,因为在Dart中一切皆为对象,数字也不例外.

  int lineCount;
  assert(lineCount == null);

  // assert()的调用会在生产环境被忽略掉.在开发过程中 assert(condition)将会在【条件判断】为false时抛出一个exception

  // 🏳‍🌈🏳‍🌈🏳‍🌈 Final 和 Const 🏳‍🌈🏳‍🌈🏳‍🌈
  // const: 编译时初始化
  // final: 运行时初始化
  // 如果你不想更改一个变量,可以使用final或const修饰变量. 这两个关键字可替代var关键字或者加在一个具体的类型前.
  // 一个final变量只可以被赋值一次; 一个const变量是一个编译时常量(【const变量同时也是final的】)
  // 顶层的final变量或者类的final变量在其第一次使用的时候被初始化.

  // 🌙 tips: 实例变量可以final的但不可以是const的, final实例变量必须在构造器开始前被初始化,比如在声明实例变量时初始化,或者作为构造器参数,或者将其置于构造器的初始化列表中.

  final test = 'Bob';
  final String nickname = 'Bobby';
  // test ='Alick'; // Error: a final variable can only be set once. 你不能修改一个 final 变量的值：

  // 使用关键字const修饰变量表示该变量为【编译时常量】.
  // 如果使用const修饰类中的变量,则必须加上static关键字,即 static const(固定顺序)
  // 在声明const变量时可以直接为其赋值,也可以使用其他的const变量为其赋值.
  const bar = 10000;
  const double atm = 1.0342 * bar;

  // const关键字不仅仅可以用来【定义变量】还可以用来【创建常量值】,该常量值可以赋予给其他任何变量.
  // ❗【可以将构造函数声明为 const 的，这种类型的构造函数创建的对象是不可改变的】
}
