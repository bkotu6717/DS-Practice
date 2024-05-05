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
  head.next = first
  first.prev = head
  first
end


def display_list(first_node)
    elements = []
    head = first_node
    loop do
        elements << first_node.data
        first_node = first_node.next
        break if(first_node == head)
    end
    print elements.join(" <--> ")
    puts "\n"
end

def find_tail(head)
    first_node = head
    while(head.next != first_node)
        head = head.next
    end
    head
end

# insert before = insert_at
def insert_before(first_node, key, node)
    head = first_node
    tail = find_tail(first_node)
    if(head.data == key)
        node.next = head
        head.prev = node
        tail.next = node
        return node
    end
    
    loop do
        if (head.next.data == key)
            node.next = head.next
            head.next.prev = node
            head.next = node
            node.prev = head
            return first_node
        else
            head = head.next
            break if tail == head
        end
    end
end

def insert_after(first_node, key, node)
    head = first_node
    tail = find_tail(first_node)
    if (head.data == key)
        node.next = head
        head.prev = node
        tail.next = node
        return node
    end
    head = head.next
    
    loop do
        if head.data == key
            node.next = head.next
            head.next.prev = node
            head.next = node
            node.prev = head
            return first_node
        else
            head = head.next
        end
    end
    first_node
end

def delete(first_node, node)
    head = first_node
    tail = find_tail(first_node)
    
    if (head.data == node.data)
       head = head.next
       head.prev = tail
       tail.next = head
       return head
    end
    loop do
        if head.next.data == node.data
           head.next = head.next.next
           head.next.prev = head
           return first_node
        else
            head = head.next
            break if head == first_node
        end
    end
    return first_node
end

def new_tail(head)
    while(head.next)
        head = head.next
    end
    head
end

def reverse(list)
    head = list
    tail = find_tail(head)
    # Break the cirular links at begining and ending
    head.prev = nil
    tail.next = nil
    
    # Process like a normal double linked list
    while(head)
        temp = head.next
        head.next = head.prev
        head.prev = temp
        break unless head.prev
        head = head.prev
    end
    
    #Make the list again circular
    tail = new_tail(head)
    head.prev = tail
    tail.next = head
    head
end


list = create_list([1,3,5,7,9])
display_list(list)
new_list = insert_before(list, 1, Node.new(0))
display_list(new_list)
new_list = insert_before(new_list, 9, Node.new(8))
display_list(new_list)

new_list = insert_before(new_list, 5, Node.new(4))
display_list(new_list)

new_list = insert_after(new_list, 0, Node.new(-1))
display_list(new_list)

new_list = insert_after(new_list, 1, Node.new(2))
display_list(new_list)
new_list = insert_after(new_list, 9, Node.new(10))
display_list(new_list)
new_list = insert_after(new_list, 5, Node.new(6))
display_list(new_list)

new_list = delete(new_list, Node.new(-1))
display_list(new_list)

new_list = delete(new_list, Node.new(2))
display_list(new_list)

new_list = delete(new_list, Node.new(10))
display_list(new_list)

new_list = reverse(new_list)
display_list(new_list)
