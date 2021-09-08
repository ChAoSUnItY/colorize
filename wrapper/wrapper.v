module wrapper

#flag -I @VROOT/wrapper
#flag @VROOT/wrapper/colored.o
#include "colored.h"

pub fn C.getHandle() C.HANDLE

fn C.getDefault() u16

pub fn C.getCurrentAttributes(C.HANDLE) u16

pub fn C.reset(u16)

pub fn C.invert(u16)

pub fn C.underline(u16)

pub fn C.no_underline(u16)

pub fn C.regular(u16)

pub fn C.black(u16)

pub fn C.red(u16)

pub fn C.green(u16)

pub fn C.yellow(u16)

pub fn C.blue(u16)

pub fn C.magenta(u16)

pub fn C.cyan(u16)

pub fn C.light_gray(u16)

pub fn C.dark_gray(u16)

pub fn C.light_red(u16)

pub fn C.light_green(u16)

pub fn C.light_yellow(u16)

pub fn C.light_blue(u16)

pub fn C.light_magenta(u16)

pub fn C.light_cyan(u16)

pub fn C.white(u16)

pub fn C.bg_black(u16)

pub fn C.bg_red(u16)

pub fn C.bg_green(u16)

pub fn C.bg_yellow(u16)

pub fn C.bg_blue(u16)

pub fn C.bg_magenta(u16)

pub fn C.bg_cyan(u16)

pub fn C.bg_light_gray(u16)

pub fn C.bg_dark_gray(u16)

pub fn C.bg_light_red(u16)

pub fn C.bg_light_green(u16)

pub fn C.bg_light_yellow(u16)

pub fn C.bg_light_blue(u16)

pub fn C.bg_light_magenta(u16)

pub fn C.bg_light_cyan(u16)

pub fn C.bg_white(u16)

pub const (
	reset = C.getDefault()
)
