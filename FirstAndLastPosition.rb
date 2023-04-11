# 34. Find First and Last Position of Element in Sorted Array

# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

# If target is not found in the array, return [-1, -1].

# You must write an algorithm with O(log n) runtime complexity.

 

# Example 1:

# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
# Example 2:

# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]
# Example 3:

# Input: nums = [], target = 0
# Output: [-1,-1]
 

# Constraints:

# 0 <= nums.length <= 105
# -109 <= nums[i] <= 109
# nums is a non-decreasing array.
# -109 <= target <= 109


def search_range(nums, target)
    firstFound = false;
    ans = [-1,-1];
    if !nums.include?(target)
        return ans;
    end

    hsh = Hash.new(0);
    for i in 0...nums.length
        hsh[i] = nums[i]
    end
    
    hsh.each do |k,v|
        if(v == target && firstFound == false)
            ans[0] = k
            firstFound = true
        elsif(v == target && firstFound == true)
            ans[1] = k
        end
    end

    ans[1] = ans[0] if ans[1] == -1
    return ans
end