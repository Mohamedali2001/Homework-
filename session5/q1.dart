// void main() {
//   print(twoSum([3, 2, 3], 6));
// }

// List<int> twoSum(List<int> nums, int target) {
//   List<int> indexs = [];
//   int sumNmbers = 0;
//   for (int i = 0; i < nums.length; i++) {
//     if (i + 1 != nums.length) {
//       if (nums[i] + nums[i + 1] == target) {
//         indexs.add(i);
//         indexs.add(i + 1);
//       } else if (sumNmbers <= target) {
//         sumNmbers = nums[i];

//         int completNumber = target - sumNmbers;
//         indexs.add(i);
//         int firstIndex = nums.indexOf(completNumber);
//         indexs.add(nums.indexOf(completNumber, firstIndex + 1));
//         break;
//       }
//     }
//   }
//   return indexs;
// }
// حل اخر
void main() {
  print(twoSum([3, 2, 3], 6)); // [0,2]
}

List<int> twoSum(List<int> nums, int target) {
  var indexOfNumbers = {};
// key in Map ==>numbers 
//value in Map ==>index
  for (int i = 0; i < nums.length; i++) {
    int complementTarget = target - nums[i];
    if (indexOfNumbers.containsKey(complementTarget)) {
      return [indexOfNumbers[complementTarget], i];
    }
    indexOfNumbers[nums[i]] = i;
  }
  return [];
}
