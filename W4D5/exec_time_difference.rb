#time complexity O(n^2), space complexity is O(1)

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

#time O(n^2), space O(n^2)
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
    largest = arr.first
    cur = arr.first



end

                  
list = [2, 3, -6, 7, -6, 7]

p largest_contiguous_subsum2(list)