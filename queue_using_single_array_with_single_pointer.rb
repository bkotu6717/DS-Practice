# Implement queue using single Array with single pointer



class Queue
    attr_accessor :rear, :que
    
    def initialize(no_of_elements)
       @que = Array.new(no_of_elements)
       @rear = -1
    end
    
    # Push elements into the queue
    def enque(element)
        puts "Queue is full" and return if is_full?
        self.rear += 1
        self.que[self.rear] = element
        
        display
    end
    
    # Remove front element from the queue and restructure the set
    def deque
        puts "Queue is empty" and return if is_empty?
        for i in 0..self.rear
            self.que[i] = self.que[i+1]
        end
        self.rear -= 1
        display
    end
    
    def display
        puts "Queue is empty" and return if is_empty?
        puts "\n"
        for i in 0..self.rear
            print "#{self.que[i]} "
        end
    end
    
    private
    def is_full?
        return true if self.rear == self.que.length-1
        false
    end
    
    def is_empty?
        return true if self.rear == -1
        false
    end
end

q = Queue.new(10)
q.enque(1)
q.enque(2)
q.enque(3)
q.enque(4)
q.enque(5)
q.enque(6)
q.enque(7)
q.enque(8)
q.deque
q.deque
q.deque
q.display
