#time complexity O(n^2), space complexity is O(1)
require "byebug"

def my_min(arr)
    arr.each do |ele|
        return ele if arr.all? { |num| num >= ele }
    end
end

#time complexity is O(n), space complexity is O(1)
def my_min2(arr)
    cur_min = arr.first
    arr.drop(1).each do |ele|
        cur_min = ele if ele < cur_min
    end
    cur_min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min2(list)

#time O(n^3), space O(n^2)
def largest_contiguous_subsum(arr)
    subset = []
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            subset << arr[i..j]
        end
    end
    subset.map { |sub| sub.sum }.max
end

#time O(n), space O(1)
def largest_contiguous_subsum2(arr)
    global = arr.first

    (0...arr.length).each do |i|  # O(n)
        global = arr[i] if arr[i] > global #O(1)
        cur = arr[i..-1].sum #O(n)!!!
        global = cur if cur > global #O(1)
        if i > 0        #0(1)
            cur = arr[0..-i].sum
            global = cur if cur > global #O(1)
        end
    end

    global
end

        
# list1 = [5, 3, -7]
# list2 = [2, 3, -6, 7, -6, 7]
# list3 = [-5, -1, -3]

# p largest_contiguous_subsum2(list1)
# p largest_contiguous_subsum2(list2)
# p largest_contiguous_subsum2(list3)

def largest_contiguous_subsum3(arr)
    global = nil
    cur = 0

    arr.each do |ele|
        cur += ele
        cur = ele if ele > cur
        global = cur if global.nil? || cur > global
    end
    global
end

list1 = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]

p largest_contiguous_subsum3(list1)
p largest_contiguous_subsum3(list2)
p largest_contiguous_subsum3(list3)