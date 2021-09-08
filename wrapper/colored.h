#ifndef COLORED_H
#define COLORED_H

#include <stdio.h>

#define u16 unsigned short

#ifdef _WIN32
#include <windows.h>
#endif

HANDLE getHandle();

u16 getDefault();

u16 getCurrentAttributes(HANDLE h);

void reset(u16 attr);

void invert(u16 attr);

void underline(u16 attr);

void no_underline(u16 attr);

void regular(u16 attr);

void def(u16 attr);

void black(u16 attr);

void red(u16 attr);

void green(u16 attr);

void yellow(u16 attr);

void blue(u16 attr);

void magenta(u16 attr);

void cyan(u16 attr);

void light_gray(u16 attr);

void dark_gray(u16 attr);

void light_red(u16 attr);

void light_green(u16 attr);

void light_yellow(u16 attr);

void light_blue(u16 attr);

void light_magenta(u16 attr);

void light_cyan(u16 attr);

void white(u16 attr);

void bg_black(u16 attr);

void bg_red(u16 attr);

void bg_green(u16 attr);

void bg_yellow(u16 attr);

void bg_blue(u16 attr);

void bg_magenta(u16 attr);

void bg_cyan(u16 attr);

void bg_light_gray(u16 attr);

void bg_dark_gray(u16 attr);

void bg_light_red(u16 attr);

void bg_light_green(u16 attr);

void bg_light_yellow(u16 attr);

void bg_light_blue(u16 attr);

void bg_light_magenta(u16 attr);

void bg_light_cyan(u16 attr);

void bg_white(u16 attr);

#endif
