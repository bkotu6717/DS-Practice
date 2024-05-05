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

def display_list(temp)
    print "Current list: "
    while(temp) do
        print "#{temp.data} "
        temp = temp.next
    end
    puts "\n"
end

display_list(q)

def delete_element(q, element)
    if(q.data == element)
        q = q.next if q.next
        q = nil unless q.next
        return q
    end
    temp = q
    while(temp.next)
        node_data = temp.next.data
        next_next_node = temp.next.next
        if(node_data == element) && (next_next_node)
            temp.next = next_next_node
            return q
        elsif (node_data == element) && !(next_next_node)
            temp.next = nil
            return q
        end
        temp = temp.next
    end
    q
end

q = delete_element(q, 9)
display_list(q)
