# Hello World Program in Ruby


class Node
    attr_accessor :data, :next
    
    def initialize(data)
        @data = data
        @next = nil
    end
    
end

sample_elements = [1,2,3,4,5,6,7,8,9]
q = r = Node.new(sample_elements[0])
temp = q
counter = 0

for i in 1..sample_elements.length-1
  temp = Node.new(sample_elements[i])
  r.next = temp
  r = r.next
end

while(temp) do
    puts temp.data
    temp = temp.next
    counter += 1
end

puts "Total nodes count #{counter}"

# Recurisive
def display_items(temp)
    puts temp.data
    display_items(temp.next) unless temp.next.nil?
end
display_items(temp)
