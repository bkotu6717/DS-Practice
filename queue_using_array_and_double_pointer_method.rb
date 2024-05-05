# Implement Queue using array and double pointer method

class Queue
    attr_accessor :front, :rear, :que
    
    def initialize(no_of_elements)
        @front = -1
        @rear = -1
        @que = Array.new(no_of_elements)
    end
    
    def enque(element)
        puts "Queue is full" and return if is_full?
        self.rear += 1
        self.que[self.rear] = element
        display
    end
    
    def deque
        puts "Queue is empty" and return if is_empty?
        self.que[self.front+1] = nil
        self.front += 1
        display
    end
    
    def reset
        self.front = -1
        self.rear = -1
    end
    
    def display
        puts "Queue is empty" and return if is_empty?
        i = self.front
        for i in self.front..self.rear
            print "#{self.que[i]} "
        end
        puts "\n"
    end
    
    def is_full?
        return true if self.rear == self.que.length - 1
        false
    end
    
    def reset
        self.front = -1
        self.rear = -1
    end
    
    def is_empty?
        puts "self.frot: #{self.front}, self.rear: #{self.rear}"
        # When rear is never moved, its empty
        return true if self.rear == -1
        # When rear and front pointing to same but not to -1
        if self.rear == self.front
            puts "Queue was reset as it is unusable."
            return true
        end
        false
    end
end

q = Queue.new(10)

q.display
q.enque(1)

q.enque(2)
q.enque(3)

# q.display
# q.deque
# q.display

# q.deque
# q.display

q.deque
q.deque
q.deque

q.enque(1)
q.enque(2)
q.deque
q.deque
