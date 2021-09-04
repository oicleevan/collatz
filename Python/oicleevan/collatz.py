"""
    collatz.py
    Calculates the collatz conjecture for a number provided at runtime. For github/oicleevan/collatz.
    -- oicleevan
"""

import sys

def collatz(number):
    terms = [number]
    while(number > 1):
        if(number % 2):
            number = (number * 3) + 1
        else:
            number /= 2
        terms.append(number)
    return terms;

for arg in sys.argv:
    n = int(sys.argv[1])

print(f"Calculating the collatz conjecture from the number {n}...")
nums = collatz(n) # calculates

print(f"The results are in: {nums}")
