sparse_matrix = [
        [0,0,0,0,8,0],
        [0,0,0,7,0,0],
        [5,0,0,0,9,0],
        [0,0,0,0,0,3],
        [0,0,0,0,0,0]
    ]
    
class Node
    attr_accessor :data, :next, :column
    
    def initialize(column, data)
        @column = column
        @data = data
        @next = nil
    end
    
end

sparse_linked_list = []

for i in 0..4
    head = nil
    for j in 0..5
        if sparse_matrix[i][j] != 0
           if (head.nil?)
                head = Node.new(j, sparse_matrix[i][j])
            else
                head.next = Node.new(j, sparse_matrix[i][j])
            end
        end
    end
    sparse_linked_list << head
end
sparse_linked_list.each do |head|
    for j in 0..5
        if(head && (head.column == j))
            print "#{head.data} "
            head = head.next
        else
            print "0 "
        end
    end
    puts "\n"
end
