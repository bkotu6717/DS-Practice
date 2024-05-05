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


def count(root)
  total = 0
  if(root)
    x = count(root.left)
    y = count(root.right)
    total = x + y + 1
    puts "x: #{x}, y: #{y}, total: #{total}"
    return total
   else
       return 0
   end
end

puts count(root)
