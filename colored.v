module main

import wrapper

pub fn reset() {
	C.reset(wrapper.reset)
}

fn get_current() u16 {
	return C.getCurrentAttributes(C.getHandle())
}

pub fn underline() {
	C.underline(get_current())
}

pub fn black() {
	C.black(get_current())
}

pub fn red() {
	C.red(get_current())
}

fn main() {
	black()
	underline()
	println("Hello World")
	reset()
	
	println("Hello World")
	
}
