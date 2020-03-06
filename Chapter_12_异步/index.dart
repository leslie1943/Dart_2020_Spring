// 异步支持

// Dart 代码库中有大量返回 Future 或 Stream 对象的函数，
// 这些函数都是 异步 的，它们会在耗时操作（比如I/O）执行完毕前直接返回而不会等待耗时操作执行完毕。
// async 和 await 关键字用于实现异步编程，并且让你的代码看起来就像是同步的一样。

// 🚀🚀 处理 Future
// 可以通过下面两种方式，获得 Future 执行完成的结果：
//  async 和 await。
// 使用 Future API

// 使用 async 和 await 的代码是异步的，但是看起来有点像同步代码
// 必须在带有 async 关键字的 异步函数 中使用 await
import 'version.dart';

Future checkVersion() async {
  var version = await lookUpVersion();
  // then use version
  print(version);
}

// 尽管异步函数可以处理耗时操作，但是它并不会等待这些耗时操作完成，
// 异步函数执行时会在其遇到第一个 await 表达式（详情见）的时候返回一个 Future 对象，
// 然后等待 await 表达式执行完毕后继续执行。

// 使用 try、catch 以及 finally 来处理使用 await 导致的异常
testAsync() async {
  try {
    var version = await lookUpVersion();
    print(version);
  } catch (e) {
    // 无法找到版本时做出的反应
  }
}

// 你可以在异步函数中多次使用 await 关键字。例如，下面代码中等待了三次函数结果
/**
 * var entrypoint = await findEntrypoint();
 * var exitCode = await runExecutable(entrypoint, args);
 * await flushThenExit(exitCode);
 */
// await 表达式的返回值通常是一个 Future 对象；如果不是的话也会自动将其包裹在一个 Future 对象里。
// Future 对象代表一个“承诺”，await 表达式会阻塞直到需要的对象返回。

// 🚖🚖 如果在使用 await 时导致编译错误，请确保 await 在一个异步函数中使用

// 🚀🚀 声明异步函数
// 定义 异步函数 只需在普通方法上加上 async 关键字即可。

// 正常方法
String lookUpVersion1() => '1.0.0';
// 异步方法
Future<String> lookUpVersion2() async {
  return '1.00';
}

Future<void> testVoid() async {
  return '1.00';
}

// 如果函数没有返回有效值，需要设置其返回类型为 Future<void>。

// 🚀🚀 处理 Stream
// 如果想从 Stream 中获取值，可以有两种选择：
// 1.使用 async 关键字和一个 异步循环（使用 await for 关键字标识）
// 2.使用 Stream API

// 🚖🚖 在使用 await for 关键字前，确保其可以令代码逻辑更加清晰并且是真的需要等待所有的结果执行完毕。
// 🚖🚖 例如，通常不应该在 UI 事件监听器上使用 await for 关键字，因为 UI 框架发出的事件流是无穷尽的。

// 使用 await for 定义异步循环看起来是这样的：

// await for (varOrType identifier in expression) {
// 每当 Stream 发出一个值时会执行
// }

// 表达式 的类型必须是 Stream。执行流程如下：
// 1.等待直到 Stream 返回一个数据。
// 2.使用 1 中 Stream 返回的数据执行循环体。
// 3.重复 1、2 过程直到 Stream 数据返回完毕。

// 使用 break 和 return 语句可以停止接收 Stream 数据，这样就跳出了循环并取消注册监听 Stream。

// 如果在实现异步 for 循环时遇到编译时错误，请检查确保 await for 处于异步函数中

/**
 * Future main() async {
 * // ...
 * await for (var request in requestServer) {
 *   handleRequest(request);
 * }
 * // ...
 *}
 */
