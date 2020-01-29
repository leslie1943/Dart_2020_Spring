import 'dart:html';

/**
 * 每个 Dart 程序都必须有一个 main() 顶级函数作为程序的入口，
 * main() 函数返回值为 void 并且有一个 List<String> 类型的可选参数。
 */

// void main() {
//   querySelector('#sample_text_id')
//     ..text = 'Click me'
//     ..onClick.listen(event);
// }
// 上述代码中的 .. 语法称之为 级联调用。使用级联访问可以在一个对象上执行多个操作。

void main(List<String> arguments) {
  print(arguments);
  assert(arguments.length == 2);
  assert(int.parse(arguments[0]) == 1);
  assert(arguments[1] == 'test');
}
