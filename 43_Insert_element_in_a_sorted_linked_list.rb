class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

sample_elements = [1,3,5,7,9]
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

def display_list(temp)
    print "Current list: "
    while(temp) do
        print "#{temp.data} "
        temp = temp.next
    end
    puts "\n"
end

temp = q
display_list(temp)


# # Insert element in a sorted list
def insert_element(q, element)
    new_node = Node.new(element)
    
    # Check if it needs to be inserted at beginning
    if (element <= q.data)
        new_node.next = q
        q = new_node
        return q
    end
    
    # Move to appropriate position
    temp = q
    while(temp.next)
        if (element <= temp.next.data)
            new_node.next = temp.next
            temp.next  = new_node
            return q
        else
            temp = temp.next
        end
    end
    
    # Append at the end if not found any location
    temp.next = new_node
    q
end


q = insert_element(q, 2)
display_list(q)

q = insert_element(q, 4)
display_list(q)

q = insert_element(q, 6)
display_list(q)


q = insert_element(q, -1)
display_list(q)
