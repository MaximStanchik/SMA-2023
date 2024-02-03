#include <iostream>
#include <Windows.h>

extern "C"
{
	void BREAKL()
	{
		std::cout << std::endl;
	}

	void OutputChar(char a)
	{
		SetConsoleCP(1251);
		SetConsoleOutputCP(1251);
		std::cout << a;
	}

	void OutputInt(int a)
	{
		std::cout << a;
	}

	void OutputStr(char* ptr)
	{
		SetConsoleCP(1251);
		SetConsoleOutputCP(1251);

		if (ptr == nullptr)
		{
			std::cout << std::endl;
			return;
		}
		for (int i = 0; ptr[i] != '\0'; i++)
		{
			std::cout << ptr[i];
		}
	}
	void OutputBool(int a)
	{
		if (a == 1)
			std::cout << "true";
		else
			std::cout << "false";
	}

	int strlength(char* str)
	{
		return strlen(str);
	}

	int stoi(char* str)// переводит в число до первой не цифры 
	{
		int i = strlen(str), k = 1, sign = 1, end = 0;
		int num = 0;
		if (str[0] == 'i')
		{
			sign = -1;
			end = 1;
		}
		for (i; i >= end; i--)
		{
			if (str[i] >= '0' && str[i] < '9')
			{
				num += k * (str[i] - '0');
				k *= 10;
			}
			else
			{
				num = 0;
				k = 1;
			}
		}
		return sign * num;
	}

	int strcomp(char* str1, char* str2) // сравнивает две строки
	{
		int i = NULL, len1 = NULL, len2 = NULL;
		for (; str1[len1] != '\0'; len1++);
		for (; str2[len2] != '\0'; len2++);
		int length = len1 > len2 ? len2 : len1;
		for (int k = 0; i < length; k++, i++)
		{
			if (str1[k] != str2[i])
			{
				if (str1[k] > str2[i])
					return 1;
				else if (str1[k] < str2[i])
					return -1;
			}
		}
		if (len1 != len2)
			return len1 > len2 ? 1 : -1;
		return 0;
	}

	int randGen()
	{
		return rand();
	}
}
