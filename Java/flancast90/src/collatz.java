// import scanner for reading user input
import java.util.Scanner; 
// arraylist for arrays of unknown size
import java.util.ArrayList;

// initialise class collatz for taking input and calculating collatz with it.
public class collatz {
	
	static ArrayList<Integer> nums = new ArrayList<>();
	
	public static void main(String[] args) {
		Scanner collatz_num = new Scanner(System.in);  // Create a Scanner object
	    System.out.println("Enter number: ");

	    int test_case = collatz_num.nextInt();  // Read user input
	    while (test_case > 1) {
	    	if (test_case % 2 != 0) {
	    		test_case = (3*test_case)+1;
	    		nums.add(test_case);
	    	}else {
	    		test_case = test_case/2;
	    		nums.add(test_case);
	    	}
	    }
	    System.out.println(nums);
	}
	
}