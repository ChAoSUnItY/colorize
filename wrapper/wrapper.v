module wrapper

#flag -I @VROOT/wrapper
#flag @VROOT/wrapper/colored.o
#include "colored.h"

pub fn C.getHandle() C.HANDLE

fn C.getDefault() u16

pub fn C.getCurrentAttributes(C.HANDLE) u16

pub fn C.reset(u16)

pub fn C.underline(u16)

pub fn C.black(u16)

pub fn C.red(u16)

pub const(
	reset = C.getDefault()
)
