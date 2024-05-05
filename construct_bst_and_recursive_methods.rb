class Node
    attr_accessor :data, :left, :right
    
    def initialize(data)
        @data = data
    end
end


def construct_bst_iterative(temp, current_node)
    while(temp)
        return if temp.data == current_node.data
        if current_node.data < temp.data
            temp.left = current_node unless temp.left
            temp = temp.left if temp.left
        end
        if current_node.data > temp.data
            temp.right = current_node unless temp.right
            temp = temp.right if temp.right
        end
    end
end

def construct_bst_recursive(temp, current_node)
    return if temp.data == current_node.data
    if current_node.data < temp.data
        if temp.left.nil?
            temp.left = current_node
            return
        else
            construct_bst_recursive(temp.left, current_node)
        end
    else
        if temp.right.nil?
            temp.right = current_node
            return
        else
            construct_bst_recursive(temp.right, current_node)
        end
    end
    
end

def inorder(temp)
    return unless temp
    inorder(temp.left)
    puts temp.data
    inorder(temp.right)
end

elements = [9, 15, 5, 20, 16, 8, 12, 3, 6 ]

root = Node.new(elements[0])
elements[1..-1].each do |ele|
    node = Node.new(ele)
    construct_bst_iterative(root, node)
end
inorder(root)

puts "\n\n"

root = Node.new(elements[0])

elements[1..-1].each do |ele|
    node = Node.new(ele)
    construct_bst_recursive(root, node)
end

inorder(root)
puts root.inspect
