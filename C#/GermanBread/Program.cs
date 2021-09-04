using System;
using System.Collections.Generic;

static List<uint> Collatz(uint seed) {
    List<uint> _history = new();
    _history.Add(seed);

    while (seed > 1)
        if (seed % 2 == 0)
            seed /= 2;
        else
            {
                seed *= 3;
                seed++;
            }
        _history.Add(seed);

    return _history;
}

Console.Write("Starting number: ");
if (!uint.TryParse(Console.ReadLine(), out uint Seed)) {
    Console.Error.WriteLine("The input entered was invalid.");
    Environment.Exit(1);
}

var History = Collatz(Seed);

Console.WriteLine(Seed);

Console.WriteLine("Done!");
Console.WriteLine($"Took {History.Count} passes.");
Console.WriteLine($"History: {string.Join(' ', History)}");