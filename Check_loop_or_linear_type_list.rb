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
   
   head.next = beginning.next.next
   beginning
end


def display_list(head)
   return head unless head
   
   return head if head.next.nil?
   
   while(head.next)
     print head.data
     head = head.next
   end
   puts "\n"
end

def check_is_linear_list(beginning_node)
   has_loop = false
   
   q = r = beginning_node
   loop do
     unless r
       has_loop = false
       break
      end
      
      r = r.next
      q = q.next
      
      if r && r.next
          r = r.next
      end
      
      
      if q.object_id === r.object_id
         has_loop = true
         break
      end
   end
   has_loop
end


beginning = create_list([8,5,4,4,7,3,9])

has_loop = check_is_linear_list(beginning)

p has_loop
