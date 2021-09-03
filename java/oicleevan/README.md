# java

calculating the collatz conjecture in Java

## requirements

**Java** -> I use openjdk-11, whatever else works, cool!

**Gradle (building)** -> I use ubuntu, and build 7.1.1

## building and running

### Building:

I have provided a bash script to automate building, `./build`.

If you want to manually build:

    cd collatz
    ./gradlew build

### Running:

There's also a script to automate running. It asks for a number, and automatically runs the java class. `./launch`

If you want to manually run:

    cd collatz/app/bin/main/
    java collatz.App {number you want to run} # the software will prompt for a number if you do not provide a number in the command line arguments

## -- oicleevan