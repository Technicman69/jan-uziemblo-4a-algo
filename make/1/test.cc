#include <iostream>

using namespace std;

int main(void)
{
#ifdef DEBUG
	cout << "Zostałem zbudowany z flagą -DDEBUG !\n";
	return 0;
#endif
	cout << "where -ddebug?\n";
	return 0;
}
