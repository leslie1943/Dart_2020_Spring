/**
 * 内置类型 - Number/String/Boolean
 * 
 * 字面量: 
 *  'this is a string'是一个字符串字面量
 *   true 是一个布尔字面量
 */
// 🚀🚀🚀 2.String: 可以使用单引号或者双引号 🚀🚀🚀
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
var s3 = 'It\'s easy to escape the string delimiter.';
var s4 = "It's even easier to use the other delimiter.";

// 可以在字符串中使用$(表达式)的形式使用表达式.
// 如果表达式是一个标识符,可以省略掉{}
// 如果表达式是一个对象,则Dart会调用该对象的toString方法来获取一个字符串
void test1() {
  Object objectAsString = {'a': 'a', 'b': '2'};
  print('value is $objectAsString'); // value is {a: a, b: 2}
}

void test2() {
  var s = '字符串插值';
  print('使用${s.substring(3, 5)}表达式非常方便' == '使用插值表达式非常方便'); // true

  // 可以使用 + 运算符将两个字符串连接为一个，也可以将多个字符串挨着放一起变为一个：
  var s5 = '可以拼接'
      '字符串'
      "即便它们不在同一行。";
  assert(s5 == '可以拼接字符串即便它们不在同一行。'); // true

  var s6 = '使用加号 + 运算符' + '也可以达到相同的效果。';
  assert(s6 == '使用加号 + 运算符也可以达到相同的效果。'); // true

  // 可以使用三个单引号或者三个双引号创建多行字符串：
  var s7 = '''
  你可以像这样创建多行字符串。
  ''';

  var s8 = """这也是一个多行字符串。""";

  // 在字符串前加上 r 作为前缀创建 “raw” 字符串（即不会被做任何处理（比如转义）的字符串）：
  var s9 =
      r'在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。'; // 在 raw 字符串中，转义字符串 \n 会直接输出 “\n” 而不是转义为换行。

  // 可以将下面三个常量作为字符串插值拼接到字符串字面量中。(These work in a const string.)
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';
  const validConstString = '$aConstNum $aConstBool $aConstString';
  print(validConstString);

  // 而下面三个常量则不能作为字符串插值拼接到字符串字面量。
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];
  // const invalidConstString = '$aNum $aBool $aString $aConstList'; // ❌
  // print(invalidConstString);
}
