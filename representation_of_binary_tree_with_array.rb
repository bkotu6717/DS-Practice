class Node
    attr_accessor :data, :left, :right
    def initialize(data)
        @left = nil
        @data = data
        @right = nil
    end
end


root = Node.new('A')
root.left = Node.new('B')
root.right = Node.new('C')

puts root.inspect
left_sub_tree = root.left
left_sub_tree.left =  Node.new('D')
left_sub_tree.right =  Node.new('E')
puts left_sub_tree.inspect


right_sub_tree = root.right
right_sub_tree.left = Node.new('F')
right_sub_tree.right = Node.new('G')
puts right_sub_tree.inspect

que = []
arr = []
front = rear = -1
que << root
front += 1
rear += 1

while(front <= rear)
    if que[front].left
        rear += 1
        que << que[front].left
    end
    if que[front].right
        rear += 1
        que << que[front].right 
    end
    front += 1
end
que.each_with_index do |ele, i|
  que[i] = ele.data
end

puts que.inspect

que.each_with_index do |node, i|
 puts "node: #{node}, left_child: #{que[(2*i)+1]}, right_child: #{que[(2*i) + 2]}"
end
# Make sure the nodes are indexed from 1 to N, instead of 0
que.insert(0, -1)

que.each_with_index do |node, i|
    puts "node: #{node}, index: #{i}, parent: #{que[(i)/2]}"
end
