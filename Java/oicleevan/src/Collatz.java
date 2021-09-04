/*
    collatz.java (collatz java)
    Calculates the collatz conjecture for a given number (in java!!!)
    -- oicleevan
*/

package me.oicleevan.collatz;

import java.util.ArrayList;
import java.util.Scanner;

public class Collatz { 
    
    static ArrayList<Integer> calculate(int num) {
        ArrayList<Integer> terms = new ArrayList<>();
        terms.add(num);

        while (num > 1) {
            if(num % 2 == 1) {
                num = (num * 3) + 1;
            } else {
                num /= 2;
            }
            terms.add(num);
        }

        return terms;
    }
    
    public static void main(String[] args) {
        int n;

        if(args.length > 0) {
            n = Integer.valueOf(args[0]);
        } else {
            Scanner in = new Scanner(System.in);

            System.out.print("Please enter a number: ");
            n = in.nextInt();

            in.close();
        }

        System.out.println("\nRunning the calculator with the number " + n + "...");
        ArrayList<Integer> numbers = calculate(n);

        System.out.println("\nThe numbers are in: " + numbers);
    }
}
