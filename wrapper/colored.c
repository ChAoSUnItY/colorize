#include "colored.h"

#include <stdio.h>

#define u16 unsigned short

#ifdef _WIN32
#include <windows.h>

HANDLE getHandle()
{
    return GetStdHandle(STD_OUTPUT_HANDLE);
}

u16 getDefault()
{
    CONSOLE_SCREEN_BUFFER_INFO info;

    GetConsoleScreenBufferInfo(getHandle(), &info);

    return info.wAttributes;
}

u16 getCurrentAttributes(HANDLE h)
{
    CONSOLE_SCREEN_BUFFER_INFO info;

    GetConsoleScreenBufferInfo(h, &info);

    return info.wAttributes;
}

void set(u16 attr)
{
    SetConsoleTextAttribute(getHandle(), attr);
}

void reset(u16 attr)
{
    set(attr);
}

void underline(u16 attr)
{
    set(attr | COMMON_LVB_UNDERSCORE);
}

void invert(u16 attr)
{
    set(attr | COMMON_LVB_REVERSE_VIDEO);
}

void no_underline(u16 attr)
{
    set(attr & ~COMMON_LVB_UNDERSCORE);
}

void regular(u16 attr)
{
    set(attr & ~COMMON_LVB_REVERSE_VIDEO);
}

void black(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;

    set(attr);
}

void red(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;
    attr &= ~FOREGROUND_INTENSITY;

    set(attr);
}

void green(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr &= ~FOREGROUND_INTENSITY;

    set(attr);
}

void yellow(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr |= FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;
    attr &= ~FOREGROUND_INTENSITY;

    set(attr);
}

void blue(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr &= ~FOREGROUND_INTENSITY;

    set(attr);
}

void magenta(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr &= ~FOREGROUND_INTENSITY;

    set(attr);
}

void cyan(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void light_gray(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr |= FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void dark_gray(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;

    set(attr);
}

void light_red(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void light_green(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr |= FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void light_yellow(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr |= FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void light_blue(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void light_magenta(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr |= FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void light_cyan(u16 attr)
{
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void white(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr |= FOREGROUND_GREEN;
    attr |= FOREGROUND_BLUE;
    attr |= FOREGROUND_INTENSITY;

    set(attr);
}

void bg_black(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;

    set(attr);
}

void bg_red(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;
    attr &= ~BACKGROUND_INTENSITY;

    set(attr);
}

void bg_green(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr &= ~BACKGROUND_INTENSITY;

    set(attr);
}

void bg_yellow(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr |= BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;
    attr &= ~BACKGROUND_INTENSITY;

    set(attr);
}

void bg_blue(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr &= ~BACKGROUND_INTENSITY;

    set(attr);
}

void bg_magenta(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr &= ~BACKGROUND_INTENSITY;

    set(attr);
}

void bg_cyan(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_light_gray(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr |= BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_dark_gray(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;

    set(attr);
}

void bg_light_red(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_light_green(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr |= BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_light_yellow(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr |= BACKGROUND_GREEN;
    attr &= ~BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_light_blue(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_light_magenta(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr |= BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_light_cyan(u16 attr)
{
    attr &= ~BACKGROUND_RED;
    attr &= ~BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

void bg_white(u16 attr)
{
    attr |= BACKGROUND_RED;
    attr |= BACKGROUND_GREEN;
    attr |= BACKGROUND_BLUE;
    attr |= BACKGROUND_INTENSITY;

    set(attr);
}

#endif
