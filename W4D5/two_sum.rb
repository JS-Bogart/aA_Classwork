# TC = O(n^2)
def bad_two_sum?(arr, target)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

# TC = O(nlgn), SC = O(n)
def okay_two_sum?(arr, target)
    arr = arr.sort #nlgn
    i = 0
    j = arr.length-1
    while i < j
        return true if arr[i] + arr[j] == target
        if arr[i] + arr[j] < target
            i += 1
        else
            j -= 1
        end
    end
    false
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false
