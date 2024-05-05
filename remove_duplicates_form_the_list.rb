class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

sample_elements = [1,2,3,4,4,5,6,7,8,8,8,8,9,10]
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

# remove duplicate elements from the list

temp = q
first_node = q
while temp.next
 if temp.data != temp.next.data
     temp = temp.next
 else
     temp.next = temp.next.next
 end
end
puts "Removed dupicates from the list:"
display_list(first_node)
