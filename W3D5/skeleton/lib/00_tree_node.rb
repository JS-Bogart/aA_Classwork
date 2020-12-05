require "byebug"
class PolyTreeNode
    attr_reader :value, :parent
    attr_accessor :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent)
        return nil if self.parent == new_parent
        old_parent = @parent
        if @parent == nil && new_parent != nil
          @parent = new_parent
          @parent.children << self if !@parent.children.include?(self)
        elsif new_parent == nil
          @parent = new_parent
        else
          @parent = new_parent
          @parent.children << self if !@parent.children.include?(self)
          old_parent.children.delete(self) 
        end
    end

    def add_child(child)
      if !@children.include?(child)
        child.parent = self
      end
    end

    def remove_child(child)
      if !self.children.include?(child)
        raise "not a child"
      end
      child.parent = nil
    end

end

class Searchable

  def dfs
    
  end

  def bfs

  end

end