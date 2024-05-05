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

left.left.left = Node.new(8)
left.left.right = Node.new(9)

def leaf_count(root)
    unless (root.left && root.right)
        puts root.data
        return 1 
    end
    return leaf_count(root.left) + leaf_count(root.right)
end

puts "\n"
puts "Total leaves: #{leaf_count(root)}"
