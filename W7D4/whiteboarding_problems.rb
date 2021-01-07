#1) Given a string s, find the longest palindromic substring in s. You may assume 
#that the maximum length of s is 1000.

# def longest_palindromic_substring(s)
#     substrings = []
#     s.each_char.with_index do |char1, ind1|
#         s.each_char.with_index do |char2, ind2|
#             sub = s[ind1..ind2]
#             substrings << sub if ind1 < ind2 && is_palindrome?(sub)
#         end
#     end
#     substrings.max_by { |sub| sub.length }
# end

# def is_palindrome?(s)
#     s == s.reverse
# end

# p longest_palindromic_substring("babad")
# p longest_palindromic_substring("cbbd")

# 2) Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:
# Integers in each row are sorted from left to right.
# The first integer of each row is greater than the last integer of the previous row.

# Input:
matrix1 = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
target1 = 3
# Output: true

# Example 2:
# Input:
matrix2 = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
target2 = 13
# Output: false

def matrix_search(matrix, target)
    arr = matrix.flatten
    return false if !arr.include?(target)
    index = arr.length/2
    if target > arr[index]
        index + matrix_search(arr[index..-1], target)
    elsif target < arr[index]
        matrix_search(arr[0...index], target)
    else
        return true
    end
end

p matrix_search(matrix1, target1)
p matrix_search(matrix2, target2)