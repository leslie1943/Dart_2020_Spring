// 函数作为一级对象:

// 可以将函数作为参数传递给另一个函数
void printElement(int element) {
  print(element);
}

void testFirst() {
  var list = [1, 2, 3];
  list.forEach(printElement);
}

// 也可以将函数赋值给一个变量,
void testSecond() {
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!'; // 匿名函数.
  assert(loudify('hello') == '!!! HELLO !!!');
}

// 🚀🚀🚀 词法作用域 🚀🚀🚀
// 变量的作用域在写代码的时候就确定了.
// 大括号内定义的变量只能在大括号内调用.

bool topLevel = true;
void main() {
  var insideMain = true;
  void myFunction() {
    var insideFunction = true;
    void nestedFunction() {
      var insideNestedFunction = true;
      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
// nestedFunction() 函数可以访问包括顶层变量在内的所有的变量

// 🚀🚀🚀 词法闭包 🚀🚀🚀
// 闭包就是一个函数对象,即使函数对象的调用在它原始作用域之外，依然能够访问它词法作用域内的变量.
// 函数可以封闭定义到它作用域内的变量,

// demo: 函数 makeAdder() 捕获了变量 addBy。无论函数在什么时候返回，它都可以使用捕获的 addBy 变量

Function makerAdder(int addBy) {
  return (num i) => addBy + i;
}

void test() {
  // 生成加2的函数
  var add2 = makerAdder(2); // 也可以看作是类的实例化

  // 生成加4的函数
  var add4 = makerAdder(4);

  print(add2(3) == 5);
  print(add4(3) == 57);
}

// 🚀🚀🚀 测试函数是否相等 🚀🚀🚀
void foo() {} // 定义顶层函数 (A top-level function)

class A {
  static void bar() {} // 定义静态方法
  void baz() {} // 定义实例方法
}

void test22() {
  var x;
  // 比较顶层函数是否相等。
  x = foo;
  assert(foo == x);

  // 比较静态方法是否相等
  x = A.bar;
  assert(A.bar == x);

  // 比较实例方法是否相等
  var v = new A();
  var w = new A();

  var y = w;
  x = w.baz;

  print(x == y.baz); // true 这两个闭包引用了相同的实例对象，因此它们相等。
  print(v.baz == x); // false   // 这两个闭包引用了不同的实例对象，因此它们不相等。
}

// 🚀🚀🚀 返回值 🚀🚀🚀

// 所有的函数都有返回值。没有显示返回语句的函数最后一行默认为执行 return null;。
testReturn() {
  foo() {}
  assert(foo == null); // true
}
