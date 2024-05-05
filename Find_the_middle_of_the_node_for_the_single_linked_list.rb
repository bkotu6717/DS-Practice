class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end


def display_list(temp)
    while(temp) do
        print "#{temp.data} -> "
        temp = temp.next
    end
    puts "\n"
end

sample_elements = [1,2,3,4,5,6,7,8]
head = r = Node.new(sample_elements[0])
for i in 1..sample_elements.length-1
  temp = Node.new(sample_elements[i])
  r.next = temp
  r = r.next
end

display_list(head)


def find_the_middle_node(head)
    q = head
    r = head
    
    while(r)
        if r.next && r.next.next
          r = r.next.next
          q = q.next
        else
            break
        end
    end
    puts "I am reached end #{q.inspect}"
    q
end
puts "Middle of the list:"
result = find_the_middle_node(head)
p result.data
