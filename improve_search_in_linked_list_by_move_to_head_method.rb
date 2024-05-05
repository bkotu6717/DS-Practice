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
    while(temp) do
        print "#{temp.data} "
        temp = temp.next
    end
    puts "\n"
end

def improve_search_by_move_to_head(begining_node, search_key)
    puts "Entered list:"
    display_list(begining_node)

    head_node = begining_node
    tail_node = nil
    if (head_node.data == search_key)
        puts "#{search_key} was found at the begining of list"
        return begining_node
    else
        tail_node = head_node
        head_node = head_node.next
        while(head_node)
            if head_node.data == search_key
                tail_node.next = head_node.next
                head_node.next = begining_node
                begining_node = head_node
                break
            else
                tail_node = head_node
                head_node = head_node.next
            end
        end
    end
    puts "print after moving"
    display_list(begining_node)
    begining_node
end

begining_node = q
new_list_beginning_node = improve_search_by_move_to_head(begining_node, 8)
begining_node = new_list_beginning_node 
new_list_beginning_node = improve_search_by_move_to_head(begining_node, 2)
begining_node = new_list_beginning_node 

new_list_beginning_node = improve_search_by_move_to_head(begining_node, 2)
begining_node = new_list_baeginning_node 
new_list_beginning_node = improve_search_by_move_to_head(begining_node, 3)

begining_node = new_list_beginning_node 
new_list_beginning_node = improve_search_by_move_to_head(begining_node, 5)
