module colored

import wrapper

fn get_current() u16 {
	return C.getCurrentAttributes(C.getHandle())
}

pub fn reset() {
	$if windows {
		C.reset(wrapper.reset)
	} $else {
		print('\033[0m')
	}
}

pub fn bold() {
	$if windows {
		// unsupport
	} $else {
		print('\033[1m')
	}
}

pub fn dim() {
	$if windows {
		// unsupport
	} $else {
		print('\033[2m')
	}
}

pub fn underline() {
	$if windows {
		C.underline(get_current())
	} $else {
		print('\033[4m')
	}
}

pub fn blink() {
	$if windows {
		// unsupport
	} $else {
		print('\033[5m')
	}
}

pub fn invert() {
	$if windows {
		C.invert(get_current())
	} $else {
		print('\033[7m')
	}
}

pub fn hide() {
	$if windows {
		// unsupport
	} $else {
		print('\033[8m')
	}
}

pub fn no_bold() {
	$if windows {
		// unsupport
	} $else {
		print('\033[21m')
	}
}

pub fn no_dim() {
	$if windows {
		// unsupport
	} $else {
		print('\033[22m')
	}
}

pub fn no_underline() {
	$if windows {
		C.no_underline(get_current())
	} $else {
		print('\033[24m')
	}
}

pub fn no_blink() {
	$if windows {
		// unsupport
	} $else {
		print('\033[25m')
	}
}

pub fn regular() {
	$if windows {
		C.regular(get_current())
	} $else {
		print('\033[27m')
	}
}

pub fn show() {
	$if windows {
		// unsupport
	} $else {
		print('\033[28m')
	}
}

pub fn default() {
	$if windows {
		C.def(get_current())
	} $else {
		print('\033[39m')
	}
}

pub fn black() {
	$if windows {
		C.black(get_current())
	} $else {
		print('\033[30m')
	}
}

pub fn red() {
	$if windows {
		C.red(get_current())
	} $else {
		print('\033[31m')
	}
}

pub fn green() {
	$if windows {
		C.green(get_current())
	} $else {
		print('\033[32m')
	}
}

pub fn yellow() {
	$if windows {
		C.yellow(get_current())
	} $else {
		print('\033[33m')
	}
}

pub fn blue() {
	$if windows {
		C.blue(get_current())
	} $else {
		print('\033[34m')
	}
}

pub fn magenta() {
	$if windows {
		C.magenta(get_current())
	} $else {
		print('\033[35m')
	}
}

pub fn cyan() {
	$if windows {
		C.cyan(get_current())
	} $else {
		print('\033[36m')
	}
}

pub fn light_gray() {
	$if windows {
		C.light_gray(get_current())
	} $else {
		print('\033[37m')
	}
}

pub fn dark_gray() {
	$if windows {
		C.dark_gray(get_current())
	} $else {
		print('\033[90m')
	}
}

pub fn light_red() {
	$if windows {
		C.light_red(get_current())
	} $else {
		print('\033[91m')
	}
}

pub fn light_green() {
	$if windows {
		C.light_green(get_current())
	} $else {
		print('\033[92m')
	}
}

pub fn light_yellow() {
	$if windows {
		C.light_yellow(get_current())
	} $else {
		print('\033[93m')
	}
}

pub fn light_blue() {
	$if windows {
		C.light_blue(get_current())
	} $else {
		print('\033[94m')
	}
}

pub fn light_magenta() {
	$if windows {
		C.light_magenta(get_current())
	} $else {
		print('\033[95m')
	}
}

pub fn light_cyan() {
	$if windows {
		C.light_cyan(get_current())
	} $else {
		print('\033[96m')
	}
}

pub fn white() {
	$if windows {
		C.white(get_current())
	} $else {
		print('\033[97m')
	}
}

pub fn bg_black() {
	$if windows {
		C.bg_black(get_current())
	} $else {
		print('\033[40m')
	}
}

pub fn bg_red() {
	$if windows {
		C.bg_red(get_current())
	} $else {
		print('\033[41m')
	}
}

pub fn bg_green() {
	$if windows {
		C.bg_green(get_current())
	} $else {
		print('\033[42m')
	}
}

pub fn bg_yellow() {
	$if windows {
		C.bg_yellow(get_current())
	} $else {
		print('\033[43m')
	}
}

pub fn bg_blue() {
	$if windows {
		C.bg_blue(get_current())
	} $else {
		print('\033[44m')
	}
}

pub fn bg_magenta() {
	$if windows {
		C.bg_magenta(get_current())
	} $else {
		print('\033[45m')
	}
}

pub fn bg_cyan() {
	$if windows {
		C.bg_cyan(get_current())
	} $else {
		print('\033[46m')
	}
}

pub fn bg_light_gray() {
	$if windows {
		C.bg_light_gray(get_current())
	} $else {
		print('\033[47m')
	}
}

pub fn bg_dark_gray() {
	$if windows {
		C.bg_dark_gray(get_current())
	} $else {
		print('\033[100m')
	}
}

pub fn bg_light_red() {
	$if windows {
		C.bg_light_red(get_current())
	} $else {
		print('\033[101m')
	}
}

pub fn bg_light_green() {
	$if windows {
		C.bg_light_green(get_current())
	} $else {
		print('\033[102m')
	}
}

pub fn bg_light_yellow() {
	$if windows {
		C.bg_light_yellow(get_current())
	} $else {
		print('\033[103m')
	}
}

pub fn bg_light_blue() {
	$if windows {
		C.bg_light_blue(get_current())
	} $else {
		print('\033[104m')
	}
}

pub fn bg_light_magenta() {
	$if windows {
		C.bg_light_magenta(get_current())
	} $else {
		print('\033[105m')
	}
}

pub fn bg_light_cyan() {
	$if windows {
		C.bg_light_cyan(get_current())
	} $else {
		print('\033[106m')
	}
}

pub fn bg_white() {
	$if windows {
		C.bg_white(get_current())
	} $else {
		print('\033[107m')
	}
}
