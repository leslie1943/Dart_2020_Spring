/**
 * KeyWords
 */

/**
 * abstract(2)	dynamic(2)	implements(2)	show(1)
  as(2)	else	import(2)	static(2)
  assert	enum	in	super
  async(1)	export(2)	interface(2)	switch
  await(3)	extends	is	sync(1)
  break	external(2)	library(2)	this
  case	factory(2)	mixin(2)	throw
  catch	false	new	true
  class	final	null	try
  const	finally	on(1)	typedef(2)
  continue	for	operator(2)	var
  covariant(2)	Function(2)	part(2)	void
  default	get(2)	rethrow	while
  deferred(2)	hide(1)	return	with
  do	if	set(2)	yield(3)
 */

// 🚀 带有(1)的关键字为上下文关键字,只有在特定场景才有意义,他们可以在任意场景作为有效的标识符
// 🚀 带有(2)的关键字为内置标识符,其作用只是在JavaScript代码转Dart代码时更加简单,这些关键字在大多数时候都可作为有效的标识符,但是他们【不能】用做【类名】或者【类型名】或者【作为导入前缀使用】
// 🚀 带有(3)的关键字为Dart 1.0后发布的后用于支持异步相关的特性而加入的, 不能在由关键字 async,async*或sync*标识的方法体中使用await或yield作为标识符.
