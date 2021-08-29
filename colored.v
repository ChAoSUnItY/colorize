module colored

const (
	ansi_reset  = '\u001B[0m'
	ansi_black  = '\u001B[30m'
	ansi_red    = '\u001B[31m'
	ansi_green  = '\u001B[32m'
	ansi_yellow = '\u001B[33m'
	ansi_blue   = '\u001B[34m'
	ansi_purple = '\u001B[35m'
	ansi_cyan   = '\u001B[36m'
	ansi_white  = '\u001B[37m'
)

pub fn reset() string {
	return ansi_reset
}

pub fn black(str string) string {
	return ansi_black + str
}

pub fn red(str string) string {
	return ansi_red + str
}

pub fn green(str string) string {
	return ansi_green + str
}

pub fn yellow(str string) string {
	return ansi_yellow + str
}

pub fn blue(str string) string {
	return ansi_blue + str
}

pub fn purple(str string) string {
	return ansi_purple + str
}

pub fn cyan(str string) string {
	return ansi_cyan + str
}

pub fn white(str string) string {
	return ansi_white + str
}

const (
	ansi_black_bg  = '\u001B[40m'
	ansi_red_bg    = '\u001B[41m'
	ansi_green_bg  = '\u001B[42m'
	ansi_yellow_bg = '\u001B[43m'
	ansi_blue_bg   = '\u001B[44m'
	ansi_purple_bg = '\u001B[45m'
	ansi_cyan_bg   = '\u001B[46m'
	ansi_white_bg  = '\u001B[47m'
)

pub fn bg_black(str string) string {
	return ansi_black_bg + str
}

pub fn bg_red(str string) string {
	return ansi_red_bg + str
}

pub fn bg_green(str string) string {
	return ansi_green_bg + str
}

pub fn bg_yellow(str string) string {
	return ansi_yellow_bg + str
}

pub fn bg_blue(str string) string {
	return ansi_blue_bg + str
}

pub fn bg_purple(str string) string {
	return ansi_purple_bg + str
}

pub fn bg_cyan(str string) string {
	return ansi_cyan_bg + str
}

pub fn bg_white(str string) string {
	return ansi_white_bg + str
}
