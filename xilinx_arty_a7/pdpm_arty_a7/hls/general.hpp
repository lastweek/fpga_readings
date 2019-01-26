/*
 * Some general helpers derived from kernel.h, bug.h, compiler.h
 */

#ifndef _HLS_GENERAL_HPP_
#define _HLS_GENERAL_HPP_

#define BUG_ON(cond)	assert(!!!(cond))
#define BUG()		BUG_ON(1)

#define likely(x)	__builtin_expect(!!(x), 1)
#define unlikely(x)	__builtin_expect(!!(x), 0)

#endif /* _HLS_GENERAL_HPP_ */
