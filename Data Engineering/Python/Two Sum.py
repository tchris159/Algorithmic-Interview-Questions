class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        # Go through all elements in the array 
        # Fix the outer loop on a specific index
        # Inner loop searches through all possible pairs
        # Brute Force
        
        for i in range(0, len(nums) - 1): # outer loop through whole array
            # inner loop, in range i + 2 to the end of the array - all elements after current i from outer loop
            for j in range(i+1, len(nums)): 
                if nums[i]+nums[j] == target:
                    return [i,j]
        
        
        #Hashmap 
        
# Solution 2: Using Hashmap

# It is possible to solve this problem in linear time. The idea is to make use of a hashmap to store the indices of the elements that are already visited.  Hashmap "key" is the number in the given input array (You add this to the hashmap as you visit each element). Hashmap "value" is the index of the number in the array represented by the hashmap key.


# For a given input array this algorithm does the following steps:

# Create a hashmap which accepts integer datatype as key and value.

# Iterate through each element in the given array starting from the first element.

# In each iteration check if required number (required  number = target sum - current number) is present in the given array.

# If present, return {required number index, current number index} as  result.

# Otherwise add the current iteration number as key and its index as value to the hashmap. Repeat this  until you find the result.

# Here, we store the value as the key in the hash map, and since we are looking for index, the value is the index in the hashmap (Inverted)
        
    
    
        table = {}
        for i in range(0, len(nums)):
            
            if (target - nums[i]) in table: 
                return [table[(target - nums[i])], i] # return the table key value (index), and current index number. 
            else:
                table[nums[i]] = i # set key as the current value, and value as index
