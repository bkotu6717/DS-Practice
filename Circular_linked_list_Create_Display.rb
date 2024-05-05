class Node
    attr_accessor :data, :next
    
   def initialize(data)
       @data = data
       @next = nil
   end
end

def create_list(elements)
   beginning = head = Node.new(elements[0])
   
   for i in 1..elements.length-1
      temp = Node.new(elements[i])
      head.next = temp
      head = head.next
   end
   
   head.next = beginning
   beginning
end


def display_list(head)
   elements = []
   first_node = head
   elements << head.data
   head = head.next
   
   while(first_node.object_id != head.object_id)
     elements << head.data
     head = head.next
   endßß
   puts "\n"
   print elements.join(" ~> ")
end


beginning = create_list([8,5,4,4,9,78,70])

display_list(beginning)
