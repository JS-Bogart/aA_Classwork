# TC = O(n^2) SC = O(n)
def windowed_max_range(arr, w)
  current_max_range = nil

  (0..arr.length - w).each do |idx| # O(n)
    window = arr[idx...idx + w] # O(n)
    diff = window.max - window.min
    current_max_range = diff if current_max_range.nil? || diff > current_max_range
  end

  current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5)  #== 6 # 3, 2, 5, 4, 8


class MyQueue
  def initialize
    @store = []
  end
end
