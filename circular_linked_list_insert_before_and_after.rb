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
   end
   print elements.join(" ~> ")
   puts "\n"
end

def find_tail(head)
   first = head
   loop do
       if first.object_id != head.next.object_id
           head = head.next 
       else
           break
       end
   end
   head
end


# insert_at = inesrt_before
def insert_before(first, key, node)
   head = first
   tail = find_tail(head)
   if (head.data == key)
       node.next = head
       first = node
       tail.next = first
       return first
   end
   prev = head
   head = head.next
   while(head.data != key)
       prev = head
       head = head.next
   end
   prev.next = node
   node.next = head
   first
end

def insert_after(first, key, node)
   head = first
   tail = find_tail(head)
   puts "current head: #{head.data}"
   puts "current tail: #{tail.data}"
   loop do
       if head.data == key
           node.next = head.next
           head.next = node
           break
       end
       head = head.next
       break if head.object_id == first.object_id
   end
   first
end


beginning = create_list([1,3,5,7,9])

display_list(beginning)

new_list = insert_before(beginning, 1, Node.new(0))
display_list(new_list)
puts "\n"

new_list = insert_before(new_list, 3, Node.new(2))
display_list(new_list)

new_list = insert_before(new_list, 9, Node.new(10))
display_list(new_list)


new_list = insert_after(beginning, 1, Node.new(2))
display_list(new_list)

new_list = insert_after(beginning, 9, Node.new(10))
display_list(new_list)

new_list = insert_after(beginning, 3, Node.new(4))
display_list(new_list)
