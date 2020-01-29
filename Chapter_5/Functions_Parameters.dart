/**
 * Functions: Dart 是一种真正面向对象的语言，所以即便函数也是对象并且类型为 Function
 * 这意味着函数可以被赋值给变量或者作为其他函数的参数
 * 也可以像调用函数一样调用Dart类的实例
 */

// 🚀🚀🚀 声明类型 🚀🚀🚀
bool isNobel(int atomicNumber) {
  var _nobleGases = {
    2: 'test1',
    3: 'test3',
    10: 'test4'
  }; // 类型推断 Map<int,String>

  return _nobleGases[atomicNumber] != null;
}

// 可以不用声明返回类型
isNobelSimple(int atomicNumber) {
  var _nobleGases = {
    2: 'test1',
    3: 'test3',
    10: 'test4'
  }; // 类型推断 Map<int,String>

  return _nobleGases[atomicNumber] != null;
}

// 如果函数体内只有一个表达式可以简写,箭头函数
var _nobleGases = {2: 'test1', 3: 'test3', 10: 'test4'}; // 类型推断 Map<int,String>
bool isNobleShort(int atomicNumber) => _nobleGases[atomicNumber] != null;
// 在=>与;之间只能是表达式【而非】语句. 不能将一个if语句放在其中,但可以放置条件表达式.

// 🚀🚀🚀 参数 🚀🚀🚀
// 函数有2种: 【必要参数】和【可选参数】
// 必要参数定义在参数列表前面,可选参数定义在参数列表后面
// 可选参数可以是 【命名的】 or 【位置的】

// 🚩🚩🚩 参数 -可选参数 🚩🚩🚩
// 可选参数分为【命名参数】和【位置参数】,可在参数列表中任选其一,但不能同时出现
// ⏹⏹【命名参数】⏹⏹
// 当调用函数时，可以使用【参数名: 参数值】
void enableFlags({bool bold, bool hidden}) {}

// 虽然命名参数是可选参数的一种类型，但是你仍然可以使用 @required 注解来标识一个命名参数是必须的参数，
// 此时调用者则必须为该参数提供一个值。例如：
// const Scrollbar({Key key, @required Widget child})

// ⏹⏹【位置参数】⏹⏹
// 使用[]将一系列参数包裹起来作为位置参数.

String say(String from, String msg, [String device]) {
  var result = '$from say $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

// ⏹⏹【默认参数值】⏹⏹
// 可以用 = 为函数的命名和位置参数定义默认值,默认值必须为编译时常量
// 没有默认值的情况下默认值为null

void enableFlagDefault({bool bold = false, bool hidden = true}) {
  // todo
}

// bold 为 true, 而 hidden 为 false
void enableFlagDefaultNot({bool bold = true}) {}

String sayDefault(String from, String msg,
    [String device = 'leslie', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }

  return result;
}
// assert(sayDefault('Bob','Howdy') ==  'Bob says Howdy with a carrier pigeon');

// List 或 Map 同样也可以作为默认值。
// 定义了一个名为 doStuff() 的函数，并为其名为 list 和 gifts 的参数指定了一个 List 类型的值和 Map 类型的值。

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': '1',
      'second': '2',
      'third': '3'
    }}) {
  print('list:${list}');
  print('gifts:${gifts}');
}
