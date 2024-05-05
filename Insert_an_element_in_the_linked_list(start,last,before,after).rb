class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

sample_elements = [1,2,3,4,5,6,7,8,9]
q = r = Node.new(sample_elements[0])
counter = 0

for i in 1..sample_elements.length-1
#   puts "r-th node current addres: #{r.object_id.to_s}"
#   puts "r.next is pointing to #{r.next.object_id.to_s}"
  temp = Node.new(sample_elements[i])
#   puts "temp node begining address: #{temp.object_id.to_s}"
#   puts "temp.next is pointing to #{temp.next.object_id.to_s}"

  r.next = temp
  r = r.next
#   puts "after setting r.next to temp : #{r.object_id.to_s} \n\n"
end




temp = q

def display_list(temp)
    print "Current list: "
    while(temp) do
        print "#{temp.data} "
        temp = temp.next
    end
    puts "\n"
end

# display_list(temp)

# Insert an element before first
# tmp = Node.new(12)
# tmp.next = q
# q= tmp

# tmp = Node.new(13)
# tmp.next = q
# q= tmp
# # puts "List after insert:"
# # display_list(q)

# # Insert at position or after an element 5
# tmp = Node.new(16)
# first = q

# def insert_after_element(first, after_element, insert_node)
#     temp = first
#     while(temp) do
#         if temp.data == after_element
#             next_node = temp.next
#             temp.next = insert_node
#             insert_node.next = next_node
#             break
#         else
#             temp = temp.next
#         end
#     end
# end
# first = q
# after_element = 6
# insert_node = Node.new(12)

# insert_after_element(first, after_element, insert_node)
# first = q
# after_element = 7
# insert_node = Node.new(18)
# insert_after_element(first, after_element, insert_node)

# temp = q
# display_list(temp)

# def insert_at_last_postion_of_the_list(first, insert_node)
#     temp = first
#     while(temp.next)
#       temp = temp.next
#     end
#     temp.next = insert_node
# end

# first = q
# insert_node = Node.new(21)
# insert_at_last_postion_of_the_list(first, insert_node)
# display_list(q)

def insert_element_before(q, key, insert_node)
    if q.data == key
        insert_node.next = q
        q = insert_node
        return q
    end
    temp = q
    while(temp)
        next_element = temp.next
        if next_element.data == key
            temp.next = insert_node
            insert_node.next = next_element
            return q
        else
            temp = temp.next
        end
    end
end

insert_node = Node.new(21)
q = insert_element_before(q, 6, insert_node)
display_list(q)


insert_node = Node.new(28)
q = insert_element_before(q, 9, insert_node)
display_list(q)
