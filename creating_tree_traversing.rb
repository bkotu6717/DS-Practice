# Node

class Node
    attr_accessor :left, :data, :right
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end
end
#


root = Node.new(1)
left = Node.new(2)
right = Node.new(3)
root.left = left
root.right = right

left_child_left_1 = Node.new(4)
left_child_right_1 = Node.new(5)

right_child_left_1 = Node.new(6)
right_child_right_1 = Node.new(7)

left.left = left_child_left_1
left.right = left_child_right_1

right.left = right_child_left_1
right.right = right_child_right_1


def pre_order(tree)
    return "No tree" unless tree
    
    print tree.data
    print " "
    pre_order(tree.left)
    # pre_order(tree.right)
end


def post_order(tree)
    return "No Tree" unless tree
    
    post_order(tree.left)
    post_order(tree.right)
    print tree.data
    print " "
end

def in_order(tree)
    return "No Tree" unless tree
    
    in_order(tree.left)
    print tree.data
    print " "
    in_order(tree.right)
end

puts "Pre Order"
pre_order(root)
puts "\n"
puts "\n"

puts "Post Order"
post_order(root)
puts "\n"
puts "\n"

puts "In Order"
in_order(root)
