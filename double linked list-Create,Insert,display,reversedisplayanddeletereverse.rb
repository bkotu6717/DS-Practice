class Node
    attr_accessor :prev, :data, :next
    
    def initialize(data)
        @data = data
        @prev = nil
        @next = nil
    end
end

def create_list(elements)
  first = Node.new(elements[0])
  head = first
  for i in 1..elements.length - 1
    temp = Node.new(elements[i])
    head.next = temp
    temp.prev = head
    head = head.next
  end
  first
end


def display_list(first_node)
    elements = []
    while(first_node)
        elements << first_node.data
        first_node = first_node.next
    end
    print elements.join(" <--> ")
    puts "\n"
end

def find_tail(head)
    while(head.next)
        head = head.next
    end
    head
end

def print_reverse(head)
    tail = find_tail(head)
    elements = []
    while(tail)
        elements << tail.data
        tail = tail.prev
    end
    print elements.join(" <-> ")
end


# insert_at = insert_before
def insert_at(first_node, key, node)
    head = first_node
    temp = Node.new(node)

    if (head.data == key)
        temp.next = head
        head.prev = temp
        first_node = temp
        return first_node
    end
    
    while(head.next)
        if (head.next.data == key)
            
            puts "head.next: #{head.next.data}"
            temp.next = head.next
            head.next.prev = temp
            temp.prev = head
            head.next = temp
            puts "head.next: #{head.next.data}"

            
            return first_node
        end
        head = head.next
    end

end

def insert_after(first_node, key, node)
    head = first_node
    temp = Node.new(node)

    while(head)
        if ((head.data == key) && head.next.nil?)
            head.next = temp
            temp.prev = head
            break
        elsif (head.data == key) && head.next
            temp.next = head.next
            head.next.prev = temp
            head.next = temp
            temp.prev = head
            break
        else
            head = head.next
        end
    end
    first_node
end


def delete(first_node, key)
    head = first_node
    if(head.data == key)
        first_node = first_node.next
        first_node.prev = nil
        return first_node
    end
    while(head.next)
        if(head.next.data == key) && head.next.next
            head.next = head.next.next
            head.next.prev = head
        elsif (head.next.data == key) && head.next.next.nil?
            head.next = nil
        else
            head = head.next
        end
    end
    first_node
end

def reverse_list(first_node)
    head = first_node
    return head unless head.next
    
    # loop do
    #     head.prev, head.next = head.next, head.prev
    #     break if head.prev.nil?
    #     head = head.prev
    # end
    # head
    while(head)
      head.prev, head.next = head.next, head.prev
      first_node = head unless head.prev
      head = head.prev
    end
    first_node
end

first_node = create_list([1,3,5,7,9])
display_list(first_node)
# Reverse lined list
head_node = reverse_list(first_node)
display_list(head_node)

# new_list = insert_at(first_node, 1, 0)
# display_list(new_list)

# new_list = insert_at(new_list, 3, 2)
# display_list(new_list)

# new_list = insert_at(new_list, 5, 4)
# display_list(new_list)

# new_list = insert_at(new_list, 9, 8)
# display_list(new_list)


# new_list = insert_after(first_node, 1, 2)
# display_list(new_list)
# new_list = insert_after(first_node, 3, 4)
# display_list(new_list)
# new_list = insert_after(first_node, 9, 10)
# display_list(new_list)

# print_reverse(new_list)


# new_list = delete(first_node, 1)
# display_list(new_list)

# new_list = delete(new_list, 3)
# display_list(new_list)

# new_list = delete(new_list, 9)
# display_list(new_list)

# print_reverse(new_list)
