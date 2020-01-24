/**
 * 内置类型
 */

/**
 * Dart 中,runes 公开了字符串的 Unicode 码位
 * 从 Dart 2.6 开始,使用 characters 包来访问或者操作用户感知的字符,
 * 也被称为 Unicode (扩展) grapheme clusters.
 */

/**
 * Unicode 编码为每一个字母、数字和符号都定义了一个唯一的数值.
 * 因为 Dart 中的字符串是一个 UTF-16 的字符序列,
 * 所以如果想要表示 32 位的 Unicode 数值则需要一种特殊的语法
 */

/**
 * 常使用 \uXXXX 来表示 Unicode 字符,XXXX 是一个四位数的 16 进制数字.
 * 例如心形字符（♥）的 Unicode 为 \u2665.对于不是四位数的 16 进制数字,需要使用大括号将其括起来.
 * 例如大笑的 emoji 表情（😆）的 Unicode 为 \u{1f600}.
 */

/**
 * 果你需要读写单个 Unicode 字符,可以使用 characters 包中定义的 characters getter.
 * 它将返回 Characters 作为一系列 grapheme clusters 的字符串.下面是使用 characters API 的样例：
 */

void justTest() {
  var hi = 'Hi 🇩🇰';
  print(hi); // Hi 🇩🇰
  print('The end of the string: ${hi.substring(hi.length - 1)}'); // ???
  // print('The last character: ${hi.characters.last}\n'); // 🇩🇰

  var clapping = '\u{1f44f}';
  print(clapping); // 👏
  print(clapping.codeUnits); // [55357, 56399]
  print(clapping.runes.toList()); // [128079]

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input)); // ♥  😅  😎  👻  🖖  👍
}
