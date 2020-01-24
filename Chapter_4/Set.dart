/**
 * 内置类型 - Set
 */
// A set in Dart is an unordered collection of unique items.
// Dart support for sets is provided by set literals and the Set type.

// 尽管 Set 类型(type) 一直都是 Dart 的一项核心功能,但是 Set 字面量(literals) 却是在 Dart2.2 中才加入的.

void testSet() {
  var halogens = {'aaa', 'bbb', 'ccc', 'ddd', 'eee'};
  // Dart 推断 halogens 变量是一个 Set<String> 类型的集合，如果往该 Set 中添加类型不正确的对象则会报错

  // 可以使用在 {} 前加上类型参数的方式创建一个空的 Set，或者将 {} 赋值给一个 Set 类型的变量
  var names1 = <String>{};
  Set<String> names2 = {};

  var names3 = {}; // 创建一个map而不是一个set

  /**
   * Set 还是 map? Map 字面量语法同 Set 字面量语法非常相似。
   * 因为先有的 Map 字面量语法，所以 {} 默认是 Map 类型。
   * 如果忘记在 {} 上注释类型或赋值到一个未声明类型的变量上，
   * 那么 Dart 会创建一个类型为 Map<dynamic, dynamic> 的对象
   */
  // 向一个已经存在的set添加项目使用 .add 或者 .addAll
  var elements = <String>{};
  elements.add('hello');
  elements.addAll(halogens);
  print(elements); // {hello, aaa, bbb, ccc, ddd, eee}
  print(elements.length); // 6

  // 从 Dart 2.3 开始，Set 可以像 List 一样支持使用扩展操作符（... 和 ...?）
  // 以及 Collection If 和 Collection For 操作
  // 🏳‍🌈🏳‍🌈🏳‍🌈 查看 List.dart 文件 🏳‍🌈🏳‍🌈🏳‍🌈
}
