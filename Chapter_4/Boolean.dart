/**
 * 内置类型 - Number/String/Boolean
 * 
 * 字面量: 
 *  'this is a string'是一个字符串字面量
 *   true 是一个布尔字面量
 */

// 🚀🚀🚀 3.Boolean: 可以使用单引号或者双引号 🚀🚀🚀
// Dart使用bool关键字表示布尔类型, (true | false)
// Dart的类型安全不允许使用类似 if(nonbooleanValue) 或者 assert(nonbooleanValue)这样的代码检查布尔值
// 只允许使用显示的检查布尔值
void testBoolean() {
  // 1 检查是否为空字符串 (Check for an empty string).
  var fullName = '';
  assert(fullName.isEmpty);

  // 2 是否小于等于0
  var hitPoints = 0;
  assert(hitPoints <= 0);

  // 3 是否为null
  var unicorn;
  assert(unicorn == null);

  //4 是否为NaN
  var iMeanToThis = 0 / 0;
  assert(iMeanToThis.isNaN);
}
