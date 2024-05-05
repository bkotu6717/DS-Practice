# Circular Queue using Array

class CircularQueue
    attr_accessor :front, :rear, :que, :que_length
    
    def initialize(no_of_elements)
        @front = 0
        @rear = 0
        @que_length = no_of_elements
        @que = Array.new(no_of_elements)
    end
    
    def enque(element)
        if is_full?
            puts "Queue is already full"
            return
        end
        self.rear = (self.rear+1) % self.que_length
        self.que[self.rear] = element
        puts "After enque front: #{self.front}, rear: #{self.rear}"

    end
    
    def deque
       if is_empty?
            puts "Queue is empty"
            return
       end
       self.front = (self.front+1) % self.que_length
       self.que[self.front] = nil
       puts "After deque front: #{self.front}, rear: #{self.rear}"
       display
    end
    
    def display
        if is_empty?
            puts "Queue is empty"
            return
        end
       p self.que
        puts "\n"
    end
    
    def is_empty?
        return true if (self.front == self.rear)
        false
    end
    
    def is_full?
        return true if ((self.rear+1)%self.que_length) == self.front
        false
    end
end

cq = CircularQueue.new(5)
p cq.que

cq.enque(1)
cq.enque(2)
cq.enque(3)
cq.enque(4)
cq.enque(5)
cq.enque(6)

cq.display


cq.deque
cq.deque
cq.deque
cq.deque
cq.deque

cq.enque(6)
cq.display
cq.enque(7)
cq.display
cq.enque(8)
cq.display
cq.enque(9)
cq.display
cq.enque(10)
cq.display

cq.deque
cq.display
cq.deque
cq.display
cq.deque
cq.display
cq.deque
cq.display

puts cq.que.inspect
cq.enque(11)
cq.display
