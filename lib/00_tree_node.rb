class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        #add the parent's children array and delete the current node 
        return if self.parent == node

        if node == nil 
            @parent.children.select!{|child| child != self} 
            @parent = nil
        elsif self.parent == nil
            @parent = node
        else
             self.parent.children.select!{|nodes| nodes != self}
             @parent = node
        end

        node.children << self if node != nil && !node.children.include?(self)

    end
    
    def add_child(node)
        children << node
        node.parent=(self)
    end
    
end