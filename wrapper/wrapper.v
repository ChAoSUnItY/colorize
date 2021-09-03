module wrapper

#flag -I @VROOT/wrapper
#flag @VROOT/wrapper/colored.o
#include "colored.h"

pub fn C.red() &char

pub fn C.reset() &char
