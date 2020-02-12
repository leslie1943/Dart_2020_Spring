// 枚举类型是一种特殊的类型，也称为 enumerations 或 enums，用于定义一些固定数量的常量值。
// 使用关键字 enum 来定义枚举类型：
enum Color { red, green, blue }

// 每一个枚举值都有一个名为 index 成员变量的 Getter 方法，该方法将会返回以 0 为基准索引的位置值。
// 例如，第一个枚举值的索引是 0 ，第二个枚举值的索引是 1。以此类推。

testEnum() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  // 可以使用枚举类的 values 方法获取一个包含所有枚举值的列表：
  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);
}

// 可以在 Switch 语句中使用枚举，但是需要注意的是必须处理枚举值的每一种情况，
// 即每一个枚举值都必须成为一个 case 子句，不然会出现警告
testEnumSwitch() {
  var aColor = Color.blue;
  switch (aColor) {
    case Color.red:
      print('红如玫瑰！');
      break;
    case Color.green:
      print('绿如草原！');
      break;
    default: // 没有该语句会出现警告。
      print(aColor); // 'Color.blue'
  }
}
// 🚖🚖 枚举类型有如下两个限制：
// 1.枚举不能成为子类，也不可以 mix in，你也不可以实现一个枚举。
// 2.不能显式地实例化一个枚举类。
