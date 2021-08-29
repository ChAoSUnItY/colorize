module colored

const (
	ansi_reset  = '\e[0m'
	ansi_black  = '\e[30m'
	ansi_red    = '\e[31m'
	ansi_green  = '\e[32m'
	ansi_yellow = '\e[33m'
	ansi_blue   = '\e[34m'
	ansi_purple = '\e[35m'
	ansi_cyan   = '\e[36m'
	ansi_white  = '\e[37m'
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
	ansi_black_bg  = '\e[40m'
	ansi_red_bg    = '\e[41m'
	ansi_green_bg  = '\e[42m'
	ansi_yellow_bg = '\e[43m'
	ansi_blue_bg   = '\e[44m'
	ansi_purple_bg = '\e[45m'
	ansi_cyan_bg   = '\e[46m'
	ansi_white_bg  = '\e[47m'
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
