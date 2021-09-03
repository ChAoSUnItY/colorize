#include "colored.h"

#include <stdio.h>

#ifdef _WIN32
#include <windows.h>


char *reset()
{
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);

    SetConsoleTextAttribute(h, FOREGROUND_INTENSITY);

    return "";
}

char *red()
{
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);

    SetConsoleTextAttribute(h, FOREGROUND_RED);

    return "";
}

#endif
