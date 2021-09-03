/*
    collatz.cpp
    Calculates the collatz conjecture for a user-provided number.
    -- oicleevan
*/

#include <iostream>
#include <vector>

using std::cout;
using std::endl;

std::vector<long> numbers;

void collatz(int number)
{
    while (number > 1)
    {
        if(number % 2)
        {
            number = (number * 3) + 1;
        } else {
            number /= 2;
        }
        numbers.push_back(number);
    }
}

int main(int argc, char* argv[])
{    
    long n;

    if(argc > 2)
    {
        n = strtol(argv[1], NULL, 10);
    } else {
        cout << "Please input a number at runtime to run this program." << endl;
        return 1;
    }
    
    cout << "Calculating the collatz conjecture with " << n << "..." << endl;

    numbers.push_back(n);
    collatz(n);

    cout << "The results are in: [";

    for(const long& i : numbers)
    {
        if(i != 1) { cout << i << ", "; }
        else { cout << i << "]" << endl; }
    }

    return 0;
}
