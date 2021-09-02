func collatz() -> Array<Int> {

   var nums: [Int] = []

   print("Enter a number: ")
   
   if let collatz_num = readLine() {
   
      if let testcase = Int(collatz_num){
      
        var val = testcase
        while (val != 1) {
            if (val % 2 == 0) {
                val = val/2
                nums.append(val)
            }else {
                val = (3*val)+1
                nums.append(val)
            }
        }
        
      }else {
          print("Please enter an integer")
      }
      
   }
   
   return nums
   
}

print(collatz())
