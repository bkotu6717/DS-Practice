# Implement Queue using liked list.


class Node
    attr_accessor :data, :next
    def initialize(data)
        @data = data
        @next = nil
    end
end

def enque(node, rear)
    if !rear.nil?
        rear.next = node
        rear = rear.next
    else
        rear = node
    end
    rear
end

def deque(front)
    front = front.next
    front
end

def display(front)
    puts "List is empty" if front.nil?
    temp = front
    while(temp)
        puts temp.data
        temp = temp.next
    end
end

front = rear = nil
rear = enque(Node.new(1), rear)
front ||= rear
puts "front data: #{front.data}"

# puts rear.inspect
rear = enque(Node.new(2), rear)
puts "front data: #{front.data}"
puts rear.inspect
rear = enque(Node.new(3), rear)
puts "front data: #{front.data}"

rear = enque(Node.new(4), rear)
puts "front data: #{front.data}"

rear = enque(Node.new(5), rear)
puts "front data: #{front.data}"


puts rear.inspect
display(front)

front = deque(front)
display(front)

front = deque(front)
display(front)

front = deque(front)
display(front)

front = deque(front)
display(front)

front = deque(front)
display(front)
