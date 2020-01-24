/**
 * 内置类型 - Number/String/Boolean
 * 
 * 字面量: 
 *  'this is a string'是一个字符串字面量
 *   true 是一个布尔字面量
 */

// 🚀🚀🚀 1.Number: 支持两种Number类型(int[整型]和double[浮点型]) 🚀🚀🚀
void testNumber() {
  var x = 1; // 整型
  var hex = 0xDEADBEFF; // 整型

  var y = 1.1; // 浮点型
  var exponents = 1.42e5; // 浮点型
  // String -> int
  var one = int.parse('1');
  assert(one == 1); // true

  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1); // true

  // int -> String
  String oneAsString = 1.toString();
  print(oneAsString == '1'); // true

  // double -> String
  String piAsString = 3.1415926.toStringAsFixed(2);
  print(piAsString == '3.14');

  // 数字字面量为编译时常量,
}
