class PolyTreeNode
    attr_reader :value, :parent
    attr_accessor :children

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent)
        old_parent = @parent
        @parent = new_parent
        if @parent != nil
          add_child(self)
        end
        if old_parent != new_parent
          remove_child(self)
        end
    end

    def add_child(child)
        if !@parent.children.include?(child)
          @parent.children << child
        end
    end

    def remove_child(child)
    end

end
