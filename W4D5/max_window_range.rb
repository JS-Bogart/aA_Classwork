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

# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #== 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5)  #== 6 # 3, 2, 5, 4, 8


class MyQueue

  def initialize
    @store = []
  end

  def peek
    @store.first
  end

  def size
    @store.length
  end

  def empty?
    @store.nil?
  end

  def enqueue(ele)
    @store.push(ele)
  end

  def dequeue
    @store.shift
  end
end

class MyStack

  def initialize
    @store = []
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def pop
    @store.pop
  end

  def push(ele)
    @store.push(ele)
  end

end

class StackQueue

  def initialize
    @store = MyStack.new
    # @s2 = MyStack.new
  end

  def enqueue(ele)
    @store.push(ele)
  end

  def empty?
    @store.empty?
  end

  def size
    @store.size
  end

  def dequeue
    
  end

end