//
//  echo.c
//  SwiftCLib
//
//  Created by Kirow on 16.07.2022.
//

#include "echo.h"


void callCfunction(const char* name, int x, int y) {
    printf("Hello, %s! %d + %d = %d", name, x, y, x + y);
}
