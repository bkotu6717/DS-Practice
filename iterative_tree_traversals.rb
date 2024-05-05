class Node
    attr_accessor :left, :right, :data
    
    def initialize(data)
        @left = nil
        @right = nil
        @data= data
    end
end

root = Node.new('A')
root.left = Node.new('B')
root.right = Node.new('C')

lst = root.left
lst.left = Node.new('D')
lst.right = Node.new('E')

rst = root.right
rst.left = Node.new('F')
rst.right = Node.new('G')

# Iterative pre-order (root, LST, RST)

temp = root
stack = []

puts "Iterative pre-order"
while( temp || !stack.empty?)
    if temp
        puts temp.data
        stack.push(temp)
        temp = temp.left
    else
        temp = stack.slice(-1)
        stack.pop
        temp = temp.right
    end
end

# Iertative in-order traversal( LST, Root, RST)

temp = root
stack = []
puts "Iterative in-order"

while( temp || !stack.empty?)
    if temp
        stack.push(temp)
        temp = temp.left
    else
        temp = stack.slice(-1)
        puts temp.data
        stack.pop
        temp = temp.right
    end
end

puts "Iterative post order"

temp = root
stack_1 = []

# Push the root into stack 1 initially
stack_1.push(temp)

stack_2 = []

while(!stack_1.empty?)
  current = stack_1.slice(-1)
  stack_2.push(current.data)
  
  stack_1.pop
  stack_1.push(current.left) if current.left
  stack_1.push(current.right) if current.right
end

p stack_2.reverse
