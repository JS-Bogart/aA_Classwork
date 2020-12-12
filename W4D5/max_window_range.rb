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
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def transfer_out_to_in
    @in_stack.push(@out_stack.pop) until @out_stack.empty?
  end

  def transfer_in_to_out
    @out_stack.push(@in_stack.pop) until @in_stack.empty?
  end

  def enqueue(ele)
    transfer_out_to_in unless @out_stack.empty?
    @in_stack.push(ele)
  end

  def dequeue
    transfer_in_to_out unless @in_stack.empty?
    @out_stack.pop
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  def size
    @in_stack.size + @out_stack.size
  end
end
