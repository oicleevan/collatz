/*
    collatz.cpp
    Calculates the collatz conjecture for a user-provided number.
    -- oicleevan
*/

#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::vector;

vector<long> collatz(int number)
{
    vector<long> terms = { number };
    while (number > 1)
    {
        if(number % 2)
        {
            number = (number * 3) + 1;
        } else {
            number /= 2;
        }
        terms.push_back(number);
    }

    return terms;
}

int main(int argc, char* argv[])
{    
    long n;

    if(argc >= 2)
    {
        n = strtol(argv[1], NULL, 10);
    } else {
        cout << "Please enter a number to run the calculator with: ";
        std::cin >> n;
    }
    
    cout << "Calculating the collatz conjecture with " << n << "..." << endl;
    
    vector<long> numbers = collatz(n);

    cout << "\nThe results are in: [";

    for(const long& i : numbers)
    {
        if(i != 1) { cout << i << ", "; }
        else { cout << i << "]" << endl; }
    }

    return 0;
}
