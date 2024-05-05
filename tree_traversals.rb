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


def pre_order(temp)
  return unless temp
  
  puts temp.data
  pre_order(temp.left)
  pre_order(temp.right)
end

# pre_order(root)

def post_order(temp)
   return unless temp
   post_order(temp.left)
   post_order(temp.right)
   puts temp.data
end

# post_order(root)

def in_order(temp)
   return unless temp
   in_order(temp.left)
   puts temp.data
   in_order(temp.right)
end

# in_order(root)


que = []
que << root
front = rear = 0

while(front <= rear)
    if que[front].left
        que[rear+1] = que[front].left
        rear += 1
    end
    if que[front].right
        que[rear+1] = que[front].right
        rear += 1
    end
    que[front] = que[front].data
    front += 1
end

p que
