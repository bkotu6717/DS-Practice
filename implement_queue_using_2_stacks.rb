# Implete Queue using 2 STACKs

class QueueUsingStack
    attr_accessor :first_stack, :second_stack, :que_size, :front, :rear
    def initialize(que_size)
        @first_stack = Array.new(que_size)
        @second_stack = Array.new(que_size)
        @que_size = que_size
        @front = 0
        @rear = 0
    end
    
    def enque(element)
        if is_first_stack_full?
            puts "Queue is full"
            return
        end
        @first_stack[@rear] = element
        @rear += 1
        display
    end
    
    def deque
        if is_second_stack_is_empty? && is_first_stack_empty?
            puts "Queue is empty"
            return
        end
        if is_second_stack_is_empty? && !is_first_stack_empty?
            puts "Copying to second stack as it was empty."
            i = @rear
            loop do
                @second_stack[@front] = @first_stack[i]
                @first_stack[i] = nil
                break if (i-1) < 0
                i -= 1
                @rear -= 1
                @front += 1
            end
        end
        
        if !is_second_stack_is_empty?
            @second_stack[@front] = nil
            @front -= 1
        end
        display
    end
    
    def display
        puts "\n\nDisplaying result \n\n"
        puts "Rear at: #{@rear}"
        puts "Front at: #{@front}"
        p @first_stack
        puts "\n"
        p @second_stack
    end
    
    def is_first_stack_empty?
      @rear.zero?
    end
    
    def is_second_stack_is_empty?
       @front.zero?
    end
    
    def is_first_stack_full?
        @rear == @first_stack.length
    end
    
    def is_second_stack_full?
        @first == @second_stack.length
    end
end

q = QueueUsingStack.new(10)
q.enque(1)
q.enque(2)
q.enque(3)
q.enque(4)
q.enque(5)
q.enque(6)
q.enque(7)
q.enque(8)
q.enque(9)
q.enque(10)
q.enque(11)
q.enque(12)

q.deque
q.deque

q.enque(11)
