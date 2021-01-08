# 1)
# You are climbing a stair case. It takes n steps to reach to the top.
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
# Note: Given n will be a positive integer.
# Example 1:
# Input: 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:
# Input: 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# def steps(num)
#     return num if num < 3
#     return steps(num-1) + steps(num-2)
# end

# p steps(2)
# p steps(3)
# p steps(4)

# 2) 
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
# Example:
# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]


def zero_order(arr)
  ordered = false
  new_ord = arr
  while !ordered
    ordered = true
    temp_ord = new_ord
    temp_ord.each_with_index do |el, idx|
      if el == 0 # && temp_ord[idx+1] != 0 && idx != (arr.length - 1)
        # temp_ord[idx], temp_ord[idx+1] = temp_ord[idx+1], temp_ord[idx]
        temp_ord.push(0)
        temp_ord.delete_at(idx)
      end
    end
    ordered = false if new_ord != temp_ord
    new_ord = temp_ord
  end
  return new_ord
end

arr = [0,1,0,3,12]
# Output: [1,3,12,0,0]
p zero_order(arr)