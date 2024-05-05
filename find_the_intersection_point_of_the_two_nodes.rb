class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

def create_list(elements)
    first = r = Node.new(elements[0])
    for i in 1..elements.length-1
        #   puts "r-th node current addres: #{r.object_id.to_s}"
        #   puts "r.next is pointing to #{r.next.object_id.to_s}"
        temp = Node.new(elements[i])
        #   puts "temp node begining address: #{temp.object_id.to_s}"
        #   puts "temp.next is pointing to #{temp.next.object_id.to_s}"
        r.next = temp
        r = r.next
        #   puts "after setting r.next to temp : #{r.object_id.to_s} \n\n"
    end
    first
end

def display_list(temp)
    items = []
    while(temp) do
        items << temp.data
        temp = temp.next
    end
    puts items.join(" -> ")
    puts "\n"
end

def find_tail_of_list(element)
    head = element
    while(head.next)
     head = head.next
   end
   head
end

def define_intersection_point(key, first_head, second_head)
    head = first_head
    while(head.data!=key)
       head = head.next
    end
    second_list_tail = find_tail_of_list(second_head)
    second_list_tail.next = head
    display_list(second_head)
    
    [first_head, second_head]
end

def get_the_nodes_address(head)
    if head.next.nil?
      addresses = []
      addresses << {data: head.data, address: head.object_id}
      return addresses
    end
    
    addresses = get_the_nodes_address(head.next)
    addresses << {data: head.data, address: head.object_id}
    addresses
end

def find_the_intersection_point(first_lists, second_lists)
    for i in 0..first_lists.length-1
       if first_lists[i][:address] != second_lists[i][:address]
           puts "Inter section is found at: #{first_lists[i-1][:data]}"
           break
       end
    end
end

    

first_list = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
second_list = [4,5,6,7,8,9,10]
first_head = create_list(first_list)
puts "First Node:"
display_list(first_head)
second_head = create_list(second_list)
puts "Second Node:"
display_list(second_head)
puts "Second list after creating intercetion point:"
first_head, second_head = define_intersection_point(11, first_head, second_head)
first_list_address = get_the_nodes_address(first_head)
second_list_address = get_the_nodes_address(second_head)
find_the_intersection_point(first_list_address, second_list_address)
