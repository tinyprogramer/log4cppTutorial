#include <iostream>
#include <stdio.h>
#include <string>
#include "Mylog.h"

int func()
{
	LOG_WARN("warning");
	LOG_DEBUG("debug");
	return 1;
}

int main()
{
	func();
	
	std::cout<<"press any key to continue..."<<std::endl;
	getchar();
	
	return 0;
}