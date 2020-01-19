#include <windows.h>

int main()
{
	auto hwnd = FindWindow(nullptr, "Soundly");
	SetForegroundWindow(hwnd);
	SetActiveWindow(hwnd);
	SetFocus(hwnd);
	SendMessage(hwnd, WM_CHAR, 0x53, 0);
	return 0;
}