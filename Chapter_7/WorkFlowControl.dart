/**
 * Control flow statements
 */

// 🚀🚀🚀 IF and Else 🚀🚀🚀
// 与Javascript不同,Dart中的if语句中条件必须是一个布尔值.不能是其他类型

// 🚀🚀🚀 For循环 🚀🚀🚀
// Dart语言中,for循环中的闭包会自动捕获循环的【索引值】以避免Javascript中的一些常见陷阱

testFor1() {
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
  // 上述代码执行后会输出0和1
  // 在Js中会输出两个2
}
// 如果要遍历的对象实现了Iterable接口,可以使用forEach方法
// 如果不需要使用到索引,建议使用forEach
// candidates.forEach((candidate) => candidate.interview());

// 像List和Set实现了Iterable接口的类型还支持for-in的形式
testFor2() {
  var collections = [0, 1, 2];
  for (var i in collections) {
    print(i);
  }
}

// 🚀🚀🚀 while和do-while 🚀🚀🚀
// while会在循环体前先判断条件
testWhile() {
  while (true) {
    // do();
  }
}

// do-whiel会先执行一遍循环体,再判断条件
testDoWhile() {
  do {
    // something();
  } while (true);
}

// 🚀🚀🚀 break和contine 🚀🚀🚀
// 使用break可中断循环.
/**
 * while (true) {
 *   if (shutDownRequested()) break;
 *   processIncomingRequests();
 *   }
 */

// 使用contine可跳过本次循环,进入下次循环
testContine() {
  var list = [];
  for (int i = 0; i < list.length; i++) {
    var item = list[i];
    if (item.years < 5) {
      continue;
    }
    item.doSome();
  }
}

// 可以简写为:
testContinueSime() {
  var list = [];
  list.where((c) => c.years < 5).forEach((c) => c.doSome());
}

// 🚀🚀🚀 switch和case 🚀🚀🚀
// switch语句在dart中使用==来比较整数,字符串或者编译时常量
// 比较的两个对象必须是同一个类型并且不能是子类并且没有重写==操作符
// 枚举类常用
// 每一个非空的 case 子句都必须有一个 break 语句，
// 也可以通过 continue、throw 或者 return 来结束非空 case 语句。

/**
 * var command = 'OPEN';
* switch (command) {
*  case 'CLOSED':
*    executeClosed();
*    break;
*  case 'PENDING':
*    executePending();
*    break;
*  case 'APPROVED':
*    executeApproved();
*    break;
*  case 'DENIED':
*    executeDenied();
*    break;
*  case 'OPEN':
*    executeOpen();
*    break;
*  default:
*    executeUnknown();
 */

// Dart支持空的case语句.允许其以fall-through的形式执行

void executeClose() {
  // test
}
void executeNowClosed() {
  // test
}
testSpecialCase() {
  var commond = 'OPEN';
  switch (commond) {
    case 'CLOSED':
    case 'NOW_CLOSED': // case 条件值为 CLOSED 和 NOW_CLOSED 时均会执行该语
      executeClose();
      break;
  }
}

// 在非空 case 语句中想要实现 fall-through 的形式，可以使用 continue 语句配合 lable 的方式实现:
testFallThrough() {
  var command = 'CLOSED';
  switch (command) {
    case "CLOSED":
      executeClose();
      continue nowClosed; // 继续执行标签为 nowClosed 的 case 子句。
    nowClosed:
    case 'NOW_CLOSED':
      executeNowClosed(); // case 条件值为 CLOSED 和 NOW_CLOSED 时均会执行该语句。
      break;
  }
}
//每个 case 子句都可以有局部变量且仅在该 case 语句内可见。

// 🚀🚀🚀 断言 🚀🚀🚀
// 在开发过程中,可以在条件表达式为false时使用-assert(条件,可选信息)来打断代码的执行.
testAssert() {
  var text;
  int number = 10;
  String urlString = 'Hellowor';
  assert(text != null); // 确保变量不为空.
  assert(number < 100); // 确保变量小于100.
  assert(urlString.startsWith('https')); // 确保这是一个 https 地址

  //assert 的第二个参数可以为其添加一个字符串消息。
  assert(urlString.startsWith('https'),
      'url ${urlString} should start with "https". ');
}
// assert的第一个参数可以是值为布尔值的任何表达式.
// 如果表达式的值为true,则断言成功,继续执行.
// 如果表达式的值为false,则断言失败,抛出一个AssertException异常

// 如何判断 assert 是否生效？assert 是否生效依赖开发工具和使用的框架：
// 1. Flutter在调试模式时.
// 2. 一些开发工具比如 dartdevc 通常情况下是默认生效的。
// 3. 其他一些工具，比如 dart 以及 dart2js 通过在运行 Dart 程序时添加命令行参数 --enable-asserts 使 assert 生效
