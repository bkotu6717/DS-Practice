# require 'pry'

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

def merge_lists(first, second)
    
    if (first.data <= second.data)
        beginning = first
    else
        temp = first
        first = second
        second = temp
        beginning = first
    end
    
    while(first && second)
        if (first.data == second.data)
            first_tail = first
            first = first.next
            second = second.next
        elsif (first.data < second.data)
            prev_small = first
            first_tail = first
            first = first.next
        elsif (first.data > second.data)
            prev_small.next = second
            second = second.next
            prev_small.next.next = first
            prev_small = prev_small.next
        end
    end
    if(second)
        while(second)
            first_tail.next = second
            first_tail = first_tail.next
            second = second.next
        end
    end
    beginning
end

first_list = create_list([1,2,3,4])
second_lst = create_list([5,6,7,8])
final_list = merge_lists(first_list, second_lst)
display_list(final_list)

first_list = create_list([5,6,7,8])
second_lst = create_list([1,2,3,4])
final_list = merge_lists(first_list, second_lst)
display_list(final_list)

first_list = create_list([2,8,10,15])
second_lst = create_list([4,7,12,14])
final_list = merge_lists(first_list, second_lst)
display_list(final_list)
