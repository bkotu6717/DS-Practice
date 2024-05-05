# Stack ADT using linked list

class Node
    attr_accessor :next, :data
    
    def initialize(data)
        @next = nil
        @data = data
    end
end

 
elements = [1,2,3,4,5]

temp = head = Node.new(elements[0])

for i in 1..elements.length-1
    temp.next = Node.new(elements[i])
    temp = temp.next
end


def display(head)
    elements = []
    loop do
        elements << head.data
        head = head.next
        break unless head
    end
    p elements
    puts elements.join(' -> ')
end

def push(head, new_node)
    temp = head
    while (temp.next)
        temp = temp.next
    end
    temp.next = new_node
    head
end

def pop(head)
    temp = head
    unless temp
        puts "Stack is underflow"
        return
    end
    while(temp.next.next)
        temp = temp.next
    end
    temp.next = nil
    head
end

def peek(head)
    while(head.next)
        head = head.next
    end
    puts "peek value is #{head.data}"
end

def display_stack(head)
    return unless head
    display_stack(head.next)
    print "#{head.data} "
end

# display(head)


push(head, Node.new(6))
display_stack(head)
puts "\n"
push(head, Node.new(7))
display_stack(head)
puts "\n"

push(head, Node.new(8))
display_stack(head)
puts "\n"

push(head, Node.new(9))
display_stack(head)
puts "\n"

head = pop(head)
display(head)
puts "\n"

display_stack(head)
puts "\n"

new_head = pop(head)
display_stack(head)
puts "\n"

peek(head)
