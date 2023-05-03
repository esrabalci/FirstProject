/**

3. Write an Apex code that create List or Array of 10 Integer values. 
   - create another List or Array and
   - store the items in reverse order
   - print it out 

 */

List<Integer> nums = new List<Integer>{ 35, 5, 41, 7, 76, 68, 99, 10, 5, 12 };
List<Integer> reverseNums = new List<Integer>();
Integer count = 0;
for (Integer i = nums.size() - 1; i >= 0; i--) {
  reverseNums.add(nums[i]);
}

System.debug('reverseNums value is : ' + reverseNums);