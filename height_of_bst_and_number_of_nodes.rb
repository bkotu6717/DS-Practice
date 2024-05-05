class Node
    attr_accessor :data, :left, :right
    def initialize(data)
        @data = data
        @left = nil
        @right = nil
    end
end

# pre_order = [30, 20, 10, 15, 16, 25, 40 ,50 , 45]
pre_order = [8, 3, 1, 6, 4, 7, 10, 14,13]
stack = []

root = ptr = Node.new(pre_order[0])

pre_order[1..-1].each do |ele|
    if ele < ptr.data
        ptr.left = Node.new(ele)
        stack.push(ptr)
        ptr = ptr.left
        next
    elsif ele > ptr.data
        inserted = false
        while(!inserted)
            if stack.empty? && (ele > ptr.data)
                ptr.right = Node.new(ele)
                inserted = true
                ptr = ptr.right
                next
            end
            top = stack[-1]
            if(ele > ptr.data) && (ele < top.data)
                ptr.right = Node.new(ele)
                ptr = ptr.right
                inserted = true
            else
                ptr = stack.pop
            end
        end
    end
end

def height(tree)
    return 0 if tree.nil?
    x = height(tree.left)
    y = height(tree.right)
    [x,y].max + 1
end

def count(tree)
    return 0 if tree.nil?
    x = height(tree.left)
    y = height(tree.right)
    x + y + 1
end

puts height(root)
puts count(root)
