post_order = [5, 18, 15, 25, 20, 35, 45, 60, 50, 40, 30]

class Node
    attr_accessor :left, :right, :data
    def initialize(data)
        @data = data
    end
end

def build_lst(arr)
    key = arr.last
    return unless key
    Node.new(arr.select{|x| x < key})
end

def build_rst(arr)
    key = arr.last
    return unless key
    Node.new(arr.select{|x| x > key})
end

def construct(arr)
    return if arr.empty?

    temp = Node.new(arr[-1])
    temp.left = build_lst(arr)
    temp.left = construct(temp.left.data)
    temp.right = build_rst(arr)
    temp.right = construct(temp.right.data)
    temp
end

def postorder_traversal(temp)
    return unless temp
    postorder_traversal(temp.left)
    postorder_traversal(temp.right)
    puts temp.data
end
tree = construct(post_order)
postorder_traversal(tree)
