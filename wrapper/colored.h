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

void reset(u16 attribute);

void underline(u16 attr);

void black(u16 attr);

void red(u16 attr);

#endif
