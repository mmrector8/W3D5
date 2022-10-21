class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        parent = node
    end
    
    def add_child(node)
        children << parent=(node)
    end
end