/*
    App.java (collatz java)
    Calculates the collatz conjecture for a given number (in java!!!)
    -- oicleevan
*/


package collatz;

import java.util.ArrayList;
import java.util.Scanner;

public class App {
    public static void main(String[] args) {
        int n;
        ArrayList<Integer> numbers = new ArrayList<>();

        if(args.length > 0) {
            n = Integer.valueOf(args[0]);
        } else {
            Scanner in = new Scanner(System.in);

            System.out.print("Please enter a number: ");
            n = in.nextInt();

            in.close();
        }
        numbers.add(n);

        System.out.println("Running the calculator with the number " + n + "...");

        while (n > 1) {
            if(n % 2 == 1) {
                n = (n * 3) + 1;
            } else {
                n /= 2;
            }
            numbers.add(n);
        }
        
        System.out.println("The numbers are in: " + numbers);
        
    }
}
