module colored

import wrapper

fn get_current() u16 {
	return C.getCurrentAttributes(C.getHandle())
}

pub fn reset() {
	C.reset(wrapper.reset)
}

pub fn invert() {
	$if windows {
		C.invert(get_current())
	} $else {

	}
}

pub fn underline() {
	$if windows {
		C.underline(get_current())
	} $else {

	}
}

pub fn no_underline() {
	$if windows {
		C.no_underline(get_current())
	} $else {

	}
}

pub fn regular() {
	$if windows {
		C.regular(get_current())
	} $else {

	}
}

pub fn black() {
	$if windows {
		C.black(get_current())
	} $else {

	}
}

pub fn red() {
	$if windows {
		C.red(get_current())
	} $else {

	}
}

pub fn green() {
	$if windows {
		C.green(get_current())
	} $else {

	}
}

pub fn yellow() {
	$if windows {
		C.yellow(get_current())
	} $else {

	}
}

pub fn blue() {
	$if windows {
		C.blue(get_current())
	} $else {

	}
}

pub fn magenta() {
	$if windows {
		C.magenta(get_current())
	} $else {

	}
}

pub fn cyan() {
	$if windows {
		C.cyan(get_current())
	} $else {

	}
}

pub fn light_gray() {
	$if windows {
		C.light_gray(get_current())
	} $else {

	}
}

pub fn dark_gray() {
	$if windows {
		C.dark_gray(get_current())
	} $else {

	}
}

pub fn light_red() {
	$if windows {
		C.light_red(get_current())
	} $else {

	}
}

pub fn light_green() {
	$if windows {
		C.light_green(get_current())
	} $else {

	}
}

pub fn light_yellow() {
	$if windows {
		C.light_yellow(get_current())
	} $else {

	}
}

pub fn light_blue()  {
	$if windows {
		C.light_blue(get_current())
	} $else {

	}
}

pub fn light_magenta() {
	$if windows {
		C.light_magenta(get_current())
	} $else {

	}
}

pub fn light_cyan() {
	$if windows {
		C.light_cyan(get_current())
	} $else {

	}
}

pub fn white() {
	$if windows {
		C.white(get_current())
	} $else {

	}
}

pub fn bg_black() {
	$if windows {
		C.bg_black(get_current())
	} $else {

	}
}

pub fn bg_red() {
	$if windows {
		C.bg_red(get_current())
	} $else {

	}
}

pub fn bg_green() {
	$if windows {
		C.bg_green(get_current())
	} $else {

	}
}

pub fn bg_yellow() {
	$if windows {
		C.bg_yellow(get_current())
	} $else {

	}
}

pub fn bg_blue() {
	$if windows {
		C.bg_blue(get_current())
	} $else {

	}
}

pub fn bg_magenta() {
	$if windows {
		C.bg_magenta(get_current())
	} $else {

	}
}

pub fn bg_cyan() {
	$if windows {
		C.bg_cyan(get_current())
	} $else {

	}
}

pub fn bg_light_gray() {
	$if windows {
		C.bg_light_gray(get_current())
	} $else {

	}
}

pub fn bg_dark_gray() {
	$if windows {
		C.bg_dark_gray(get_current())
	} $else {

	}
}

pub fn bg_light_red() {
	$if windows {
		C.bg_light_red(get_current())
	} $else {

	}
}

pub fn bg_light_green() {
	$if windows {
		C.bg_light_green(get_current())
	} $else {

	}
}

pub fn bg_light_yellow() {
	$if windows {
		C.bg_light_yellow(get_current())
	} $else {

	}
}

pub fn bg_light_blue() {
	$if windows {
		C.bg_light_blue(get_current())
	} $else {

	}
}

pub fn bg_light_magenta() {
	$if windows {
		C.bg_light_magenta(get_current())
	} $else {

	}
}

pub fn bg_light_cyan() {
	$if windows {
		C.bg_light_cyan(get_current())
	} $else {

	}
}

pub fn bg_white() {
	$if windows {
		C.bg_white(get_current())
	} $else {

	}
}
