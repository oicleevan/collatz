"""
    collatz.py
    Calculates the collatz conjecture for a number provided at runtime. For github/oicleevan/collatz.
    -- oicleevan
"""

import sys

def collatz(number):
    while(number > 1):
        if(number % 2):
            number = (number * 3) + 1
        else:
            number /= 2
        nums.append(number)

for arg in sys.argv:
    n = int(sys.argv[1])

nums = [n]

print(f"Calculating the collatz conjecture from the number {n}...")
collatz(n) # calculates

print(f"The results are in: {nums}")
