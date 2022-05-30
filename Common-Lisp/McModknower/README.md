# Common Lisp

Calculating the collatz conjecture in Common Lisp.

Because Common Lisp uses a BigInt as the standard integer number type, this program can work with arbitrarily high numbers (just limited by your ram amount and cpu time).

## requirements

**[SBCL](http://www.sbcl.org/)** -> I used 2.0.1.debian.

**Make** -> Otherwise manually run the command from the makefile.

## building and running

To build an executable, type `make`. This command will build `collatz` in this directory.

To run, you can then execute `collatz` using `./collatz {number you are to run for}`. If there is not a number included at launch, the program will ask for one during runtime. 

**-- [McModknower](https://github.com/McModknower)**
