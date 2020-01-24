/**
 * 内置类型 - Map
 * 
 * Map 是用来关联 keys 和 values 的对象. 
 * keys 和 values 可以是任何类型的对象.
 * 在一个 Map 对象中一个 key 只能出现一次.但是 value 可以出现多次.
 *  Dart 中 Map 通过 Map 字面量和 Map 类型来实现.
 * 
 * 通常来说,Map 是一个键值对相关的对象.其中键和值都可以是任何类型的对象.
 * 每个 键 只能出现一次但是 值 可以重复出现多次
 */
void testMap() {
  var gifts = {
    'fisrt': 'partridge',
    'second': 'turtledoves',
    'third': 'golden'
  }; // 类型推断 Map<String,String>
  var noleGases = {2: 'test1', 3: 'test3', 10: 'test4'}; // 类型推断 Map<int,String>

  // 也可以使用Map的构造器创建Map
  // 为什么使用 Map() 而不是使用 new Map() 构造 Map 对象.
  // 因为从 Dart2 开始,构造对象的 new 关键字可以被省略掉
  var giftsConstructor = Map();
  giftsConstructor['first'] = 'partridge';
  giftsConstructor['second'] = 'turtledoves';
  giftsConstructor['fifth'] = 'golden rings';

  var nobleGasesConstructor = Map();
  nobleGasesConstructor[2] = 'helium';
  nobleGasesConstructor[10] = 'neon';
  nobleGasesConstructor[18] = 'argon';

  // 向Map添加键值对
  var mapModel = {"first": "firstValue"};
  mapModel["fourth"] = "fourthValue";
  // 取值
  mapModel["first"]; // firstValue
  // 如果值不存在返回null
  mapModel["second"]; // null

  mapModel.length; // 2

  // 从 Dart 2.3 Map 可以像 List 一样支持使用扩展操作符（... 和 ...?）
  // 以及 Collection If 和 Collection For 操作
  // 🏳‍🌈🏳‍🌈🏳‍🌈 查看 List.dart 文件 🏳‍🌈🏳‍🌈🏳‍🌈
}

void main() {
  bool isTrue = true;
  var mapModel = {"first": "firstValue", if (isTrue) "test": 'testV'};
  mapModel["fourth"] = "fourthValue";

  print(mapModel); // {first: firstValue, test: testV, fourth: fourthValue}
}

void testConstantMap() {
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap[2] = 'changed'; // error
  print(constantMap);
}
