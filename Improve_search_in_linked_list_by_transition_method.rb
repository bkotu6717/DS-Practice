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
    print "Transitioned list: "
    while(temp) do
        print "#{temp.data} "
        temp = temp.next
    end
    puts "\n"
end

def perform_transition(begining_node, key)
    if (begining_node.data == key)
        puts "#{key} was found at begining of list"
        return begining_node
    end
    q = begining_node
    r = begining_node.next
    if (r.data == key)
        q.next = r.next
        r.next = q
        begining_node = r
    end
    s = r.next
    while(s)
        if(s.data == key)
            r.next = s.next
            s.next = r
            q.next = s
            break
        else
            q = r
            r = s
            s = s.next
        end
    end
    display_list(begining_node)
    begining_node
end
begining_node = q
new_list_beginning_node = perform_transition(begining_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
new_list_beginning_node = perform_transition(new_list_beginning_node, 9)
