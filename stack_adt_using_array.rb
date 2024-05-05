class Stack
    attr_accessor :stack_size, :stack_elements, :top
    
    def initialize(stack_size)
        @stack_size = stack_size - 1
        @stack_elements = []
        @top = -1
    end
    
    def empty?
        if self.top == -1
            puts "The stack is empty..."
            return true
        end
        false
    end
    
    def full?
        if self.top == self.stack_size
            puts "The stack is full..."
            return true
        end
        false
    end
    
    def peek(location)
       "The element at peek #{location} is #{self.stack_elements[self.top-location+1]}"
    end
    
    def push(element)
        if full?
          puts "can't push elements"
            return false
        end
        self.stack_elements << element
        self.top += 1
    end
    
    def pop
        if empty?
            puts "can't pop elements"
            return false
        end
    
        self.stack_elements[self.top] = nil
        self.top -= 1
    end
    
    def display
       return if empty?
       i = self.top
       while(i > -1 )
            print "#{self.stack_elements[i]} "
            i -= 1
       end
        puts "\n"
    end
end


stk = Stack.new(5)
stk.push(1)
stk.push(2)
stk.push(3)
stk.push(4)
stk.push(5)
stk.display()
stk.push(6)

puts stk.peek(2)
puts stk.peek(1)


stk.pop()
stk.display()
stk.pop()
stk.display()
stk.pop()
stk.display()
stk.pop()
stk.display()
stk.pop()
stk.display()
stk.pop()
stk.display()
