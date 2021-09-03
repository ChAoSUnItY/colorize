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

void reset(u16 attribute)
{
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);

    SetConsoleTextAttribute(h, attribute);
}

void underline(u16 attr)
{
    SetConsoleTextAttribute(getHandle(), attr | COMMON_LVB_UNDERSCORE);
}

void black(u16 attr) {
    attr &= ~FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;

    SetConsoleTextAttribute(getHandle(), attr);
}

void red(u16 attr)
{
    attr |= FOREGROUND_RED;
    attr &= ~FOREGROUND_GREEN;
    attr &= ~FOREGROUND_BLUE;
    attr &= ~FOREGROUND_INTENSITY;

    SetConsoleTextAttribute(getHandle(), attr);
}

#endif
