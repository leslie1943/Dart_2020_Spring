// 扩展
// 使用 extends 关键字来创建一个子类，并可使用 super 关键字引用一个父类：
class Televison {
  void turnOn() {
    // _illuminateDisplay();
    // _activateIrSensor();
  }
}

// 🚀🚀 重写类成员
// 子类可以重写父类的实例方法、Getter 以及 Setter 方法。你可以使用 @override 注解来表示你重写了一个成员：
class SmartTelevison extends Televison {
  @override
  void turnOn() {
    super.turnOn();
    // bootNetworkInterface();
    // _initializeMemory();
    // _upgradeApps();
  }
}
// 🚀🚀 noSuchMethod()
// 如果调用了对象上不存在的方法或实例变量将会触发 noSuchMethod 方法，你可以重写 noSuchMethod 方法来追踪和记录这一行为：

class A {
  // 除非你重写 noSuchMethod，否则调用一个不存在的成员会导致 NoSuchMethodError。
  @override
  void noSuchMethod(Invocation invocation) {
    print('你尝试使用一个不存在的成员：' + '${invocation.memberName}');
  }
}

// 🚀🚀 Extension 方法
// Dart 2.7 中引入的 Extension 方法是向现有库添加功能的一种方式。你可能甚至都不知道有 Extension 方法。
// 例如，当您在 IDE 中使用代码完成功能时，它建议将 Extension 方法与常规方法一起使用
// 这里是一个在 String 中使用 extension 方法的样例，我们取名为 parseInt()，它在 string_apis.dart 中定义：
/**
 * import 'string_apis.dart';
 * print('42'.padLeft(5)); // Use a String method.
 * print('42'.parseInt()); // Use an extension method.
 */
