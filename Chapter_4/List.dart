/**
 * 内置类型 - List
 * 数组
 */
void testList() {
  var list = [1, 2, 3, '4'];
  print(list); // 1,2,3,4
  List<int> listNum = [1, 2, 3, int.parse('4')];
  print(listNum); // 1,2,3,4

  print(list.length);

  // 创建一个编译时常量的list,在List值面前加上const
  List constantList = const [1, 2, 3];
  // constantList[1] = 4; // error
  print(constantList);

  // Dart2.3引入了扩展操作符(...)和null-aware扩展操作符,提供了一种简洁的将多个元素插入集合的方法.
  var list2 = [1, 2, 3];
  var list22 = [0, ...list2];
  print(list22); // [0,1,2,3]

  var list3;
  var list33 = [0, ...?list3];
  print(list3); //[0]

  // Dart2.3还引入了 Collection-if和Collection for,在构建集合时,可使用if和for
  bool promoActive = true;
  var nav = ['home', 'furniture', 'plants', if (promoActive) 'outlet'];
  print(nav); // [home, furniture, plants, outlet]

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings); // [#0, #1, #2, #3]
}
