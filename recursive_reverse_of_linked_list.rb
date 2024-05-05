class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

sample_elements = [1,2,3,4]
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
    while(temp) do
        print "#{temp.data} -> "
        temp = temp.next
    end
    puts "\n"
end

# display_list(q)

# first = nil
# second = nil
# third = q
# while(third)
#  first = second
#  second = third
#  third = third.next
#  second.next = first
#  display_list(second)
# end

# q = second
# display_list(q)

# 1,2,3,4,5


def reverse(node)
    return nil unless node
    puts "current node data: #{node.data}"

    unless node.next
        puts "this is for last node.."
        return [node, node]
    end
    head, tail = reverse(node.next)
    
    # link new node to tail of new list
    tail.next = node
    
    # make current node's next is nil, so that the old list gets reduced
    node.next = nil
    
    # return new list head and tail
    [head, tail.next]
end

puts q.inspect

head, tail = reverse(q)
display_list(head)
