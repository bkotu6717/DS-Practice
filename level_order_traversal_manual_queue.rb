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

que = []
front = rear = -1

# Insert root node and then update front and rear
que << root
front += 1
rear += 1


if (front == rear) && (front == -1)
    puts "Que is empty"
    return
end



while(front <= rear)
    # puts "front: #{front}, rear: #{rear}"

    nd = que[front]
    puts nd.data
    
    if (nd.left)
        que << nd.left
        rear += 1
    end
    
    if (nd.right)
        que << nd.right
        rear += 1
    end
    front += 1
end
