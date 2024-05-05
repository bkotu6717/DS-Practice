class SparseMatrix
    attr_accessor :m, :n, :matrix
    
    def initialize(m, n)
        @m = m
        @n = n
        @matrix = {}
    end
    
    def create
        for i in 0..m-1
            for j in 0..n-1
                if( i == j)
                    self.matrix[[i,j]] = i
                end
            end
        end
    end
    
    def display
        for i in 0..m-1
            for j in 0..n-1
                if( self.matrix[[i,j]])
                    print "#{self.matrix[[i,j]]} "
                else
                    print "0 "
                end
            end
            puts "\n"
        end
    end
end

s_matrix = SparseMatrix.new(5,5)

s_matrix.create
puts s_matrix.matrix

puts "\n\n"

s_matrix.display
