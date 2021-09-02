#include <iostream>
#include <cstring>

using std::cout;
using std::endl;

void collatz(int number)
{
    cout << "[";
    while (number > 1)
    {
        cout << number << ", ";
        if(number % 2)
        {
            number = (number * 3) + 1;
        } else {
            number = number / 2;
        }
    }

    cout << number << "]" << endl;
}

int main(int argc, char* argv[])
{    
    long n;

    if(argc < 2)
    {
        cout << "Please input a number at runtime to run this program." << endl;
        return 1; 
    } else {
        n = strtol(argv[1], NULL, 10);
    }
    
    cout << "Calculating the collatz conjecture with " << n << "..." << endl;

    collatz(n);
}

/* to do: figure out dynamically sized array/vector and do it like python instead of my hacky solution here.
im new to this stuff!!!! */