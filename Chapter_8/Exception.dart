import 'dart:math';

/**
 * Exception 异常
 * Dart 代码可以抛出和捕获异常.
 * 异常表示一些未知的错误情况,如果异常没有捕获则会被抛出从而导致抛出异常的代码终止执行.
 * 与 Java 不同的是,Dart 的所有异常都是非必检异常,方法不一定会声明其所抛出的异常并且你也不会被要求捕获任何异常.
 * 
 * Dart 提供了 Exception 和 Error 两种类型的异常以及它们一系列的子类,你也可以定义自己的异常类型.
 * 但是在 Dart 中可以将任何非 null 对象作为异常抛出而不局限于 Exception 或 Error 类型.
 */

// 🚀🚀 抛出异常
testThrowException1() {
  throw FormatException('Excepted at least 1 section');
}

testThrowException() {
  throw 'Out of llamas';
}

// ✅ 优秀的代码通常会抛出 Error 或 Exception 类型的异常。

// 因为抛出异常是一个表达式,所以可以在 => 语句中使用,也可以在其他使用表达式的地方抛出异常
void distanceTo(Point other) => throw UnimplementedError();

// 捕获异常: 捕获异常可以避免异常继续传递（重新抛出异常除外）。捕获一个异常可以给你处理它的机会

class OutOfLlamasException {}

breedLlamas() {
  print('test breed.');
}

buyMoreLlamas() {
  print('after exception');
}

void testCatch() {
  try {
    breedLlamas();
  } on OutOfLlamasException {
    buyMoreLlamas();
  }
}

// 对于可以抛出多种异常类型的代码,也可以指定多个 【catch】 语句,
// 每个语句分别对应一个异常类型,如果 catch 语句没有指定异常类型则表示可以捕获任意异常类型
/**
 * 🚀🚀 语法 🚀🚀
 * try{
 * } on DefineException1  {
 *  // do something
 * } on DefineException2 catch(e2){
 * 
 * } on DefineException3 catch(e3){
 * 
 * } on Exception catch(e4){
 *  
 * } catch(e5){
 *  print('others')
 * }

 *  */
void testCatchMore1() {
  try {
    breedLlamas();
  } on OutOfLlamasException {
    // 指定异常
    buyMoreLlamas();
  } on Exception catch (e) {
    // 其它类型的异常
    print('Unknown exception: $e');
  } catch (e) {
    // 不指定类型,处理其它全部
    print('Something really unknown: $e');
  }
}

// 第一个参数为抛出的异常对象,第二个参数为栈信息 StackTrace 对象
void testCatchMore() {
  try {
    // ...
  } on Exception catch (e) {
    // catch 1
    print('Exception details:\n $e');
  } catch (e, s) {
    // 第一个参数为抛出的异常对象,第二个参数为栈信息 StackTrace 对象
    // catch 2
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }
}

// 🚀🚀 rethrow: 将捕获的异常再次抛出
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++);
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow;
  }
}

void main() {
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }
}
/**
 * result: 
 * misbehave() partially handled JsNoSuchMethodError.
 * main() finished handling JsNoSuchMethodError.
 */

// 🚀🚀 finally: 使用finally语句来包裹确保不管有没有异常都执行代码
// 如果没有指定的 catch 语句来捕获异常, 则在执行完 finally 语句后再抛出异常.

void testFinally() {
  try {
    breedLlamas();
  } finally {
    // 总是清理，即便抛出了异常。
    print('cleanLlamaStalls');
  }
}

// finally 语句会在任何匹配的 catch 语句后执行
void testFinally2() {
  try {
    breedLlamas();
  } catch (e) {
    print('Error:$e');
  } finally {
    print('cleanLlamaStalls');
  }
}
