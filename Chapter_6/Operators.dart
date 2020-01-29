/**
 * 运算符 - Operators
 */

// 🚀🚀🚀 算术运算符 🚀🚀🚀
/**
 *  + 加
 *  - 减
 *  * 乘
 *  / 除
 *  ~/ 除并取整
 *  % 取模
 */
testMath() {
  print(5 ~/ 2); // 2
}

// 🚀🚀🚀 关系运算符 🚀🚀🚀
// >,>=,<,<=, ==, !=

// 🚀🚀🚀 类型判断运算符 🚀🚀🚀
// as 类型转换.
// is   如果对象是指定类型则返回true
// is!  如果对象是指定类型则返回false

// 当且仅当obj实现了T的接口, obj is T才是true.
// 使用as操作符可以把对象转换为特定的类型.
// 一般情况下可以将其当作is判定类型后调用所判定对象的函数的缩写形式

/**
 * 🚧🚧 1 🚧🚧
 * if(emp is Person){
 *  // 类型检查
 *  emp.firstName = 'Bob';
 * }
 * 
 * // 🚧🚧 简写 🚧🚧
 * (emp as Person).firstName = 'Bob';
 * 
 * 🚧🚧 上述两种方式是有区别的：如果 emp 为 null 或者不为 Person 类型,
 * 则第一种方式最多只是不执行条件内代码,
 * 但是第二种方式则会抛出异常。
 */

// 🚀🚀🚀 赋值运算符 🚀🚀🚀
// 可以使用 =来赋值,同时也可以使用【??=】来为值为null的变量赋值.

/**
 * a = value
 * 
 * b ??= value
 */

// 🚀🚀🚀 逻辑运算符 🚀🚀🚀
// ! 对结果取反
// && 逻辑与
// || 逻辑非

// 🚀🚀🚀 按位和移位运算符 🚀🚀🚀
// 二进制位运算符可以操作二进制的某一位,但仅适用于整数
// & 按位与
// ! 按位或
// ^ 按位异或
// ~ 表达式 按位取反 (0变1,1变0)
// << 位左移
// >> 位右移

testByte() {
  final value = 0x22;
  final bitmask = 0x0f;
  assert((value & bitmask) == 0x02); // 按位与 (AND)
  assert((value & ~bitmask) == 0x20); // 取反后按位与 (AND NOT)
  assert((value | bitmask) == 0x2f); // 按位或 (OR)
  assert((value ^ bitmask) == 0x2d); // 按位异或 (XOR)
  assert((value << 4) == 0x220); // 位左移 (Shift left)
  assert((value >> 4) == 0x02); // 位右移 (Shift right)
}

// 🚀🚀🚀 条件运算符 🚀🚀🚀
//1: condtion ? expr1 : expr2; (如果条件为 true，执行表达式 1并返回执行结果，否则执行表达式 2 并返回执行结果)
//2: expr1 ?? expr2 如果表达式1为非null则返回其值,否则执行表达式2并返回其值
