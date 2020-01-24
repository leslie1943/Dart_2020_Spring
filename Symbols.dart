/**
 * 内置类型 - Symbol 
 */

// Symbol表示Dart中声明的操作符或者标识符.
// 该类型的对象几乎不被使用到,但如果需要按名称引用他们的API时就非常有用
// 因为代码压缩后会改变这些符号的名称但不会改变具体的符号.

// 可以使用在标识符前加 #前缀来获取Symbol:

// #radix
// #bar

// Symbol 字面量是编译时常量。

void testSymbol() {
  var sym1 = Symbol("name");
  print(sym1); // Symbol('name')

  // #创建
  var sym2 = #titan;
  print(sym2); // Symbol('titan')
}
