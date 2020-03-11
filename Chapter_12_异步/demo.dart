main() {
  _startMethod();
  _method_C();
}

_startMethod() async {
  _method_A();
  await _method_B();
  print("start结束"); // 6
}

_method_A() {
  print("A开始执行这个方法~"); // 1
}

_method_B() async {
  print("B开始执行这个方法~"); // 2
  await print("后面执行这句话~"); // 3
  print("继续执行这句哈11111~"); // 5
}

_method_C() {
  print("C开始"); // 4
}

// A开始执行这个方法~
// B开始执行这个方法~
// 后面执行这句话~
// C开始
// 继续执行这句哈11111~
// start结束

/**
 * 1.当使用async作为方法名后缀声明时，说明这个方法的返回值是一个Future；
 * 2.当执行到该方法代码用await关键字标注时，会暂停该方法其他部分执行；
 * 3.当await关键字引用的Future执行完成，下一行代码会立即执行。
 */

/**
 * 也就是首先执行_startMethod这个方法用async声明了，
 * 因为方法里调用了_method_A，所以先输出print("A开始执行这个方法~");，
 * 
 * 后面执行_method_B()，
 * 这个方法用await关键字声明，所以会暂停print("start结束");的执行，
 * 
 * 然后继续执行_method_B()将print("B开始执行这个方法~");输出，
 * 下一行遇到await关键字，会暂停其他代码的执行。
 * 当await关键字引用的Future执行完成(也就是执行print("后面执行这句话~")，_method_C()方法会立即执行，
 * 然后执行继续执行这句哈11111~，最后执行print("start结束");　
 */
