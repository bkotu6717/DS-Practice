class Node
    attr_accessor :data, :next
     
    def initialize(data)
        @data = data
        @next = nil
    end
end

def create_list(elements)
    beginning = head = Node.new(elements[0])
    
    for i in 1..elements.length-1
       temp = Node.new(elements[i])
       head.next = temp
       head = head.next
    end
    
    head.next = beginning
    beginning
end


def display_list(head)
    elements = []
    first_node = head
    elements << head.data
    head = head.next
    
    while(first_node.object_id != head.object_id)
      elements << head.data
      head = head.next
    end
    print elements.join(" ~> ")
    puts "\n"
end

def find_tail(head)
    first = head
    loop do
        if first.object_id != head.next.object_id
            head = head.next 
        else
            break
        end
    end
    head
end

def delete(first, key)
    head = first
    tail = find_tail(head)
    loop do
        
        if (head.data == key)
            head = head.next
            tail.next = head
            first = head
            return first
        end
        
        if (head.next.data == key)
            head.next = head.next.next
            break
        else
            head = head.next
        end
        
        if first.object_id == head.object_id
            break
        end
    end
    first
end

beginning = create_list([1,3,5,7,9])
display_list(beginning)
new_list = delete(beginning, 9)
display_list(new_list)
