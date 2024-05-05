class BinarySearch
    attr_accessor :l, :h, :key, :mid, :arr
    
    def initialize(l, h, arr)
        @l = l
        @h = h
        @arr = arr
    end
    
    def iterative(key)
        while( self.l <= self.h)
            self.mid = (self.l+self.h)/2
            if key == self.arr[self.mid]
                return "Element found at index: #{self.mid}"
            end
            if key > self.arr[self.mid]
                self.l = self.mid + 1
            elsif  key < self.arr[self.mid]
                self.h = self.mid - 1
            end
            return "Element not found" if self.l > self.h
        end
    end
    
    def recursive(key)
        return "Element not found" if self.l > self.h
        self.mid = (self.l+self.h)/2
        return "Element found at #{self.mid}" if self.arr[self.mid] == key
        if( key > self.arr[mid] )
            self.l = self.mid+1
            recursive(key)
        elsif( key < self.arr[mid])
            self.h = self.mid - 1
            recursive(key)
        end
    end
end

arr = Array.new(10){rand(1..100)}.sort
# arr = [75, 73, 28, 80, 24, 82, 59, 27, 65, 24]
# key = arr.sample(1).first
key = 25
puts "#{arr}"
puts "key: #{key}"
bs = BinarySearch.new(0, arr.length-1, arr)
# puts bs.iterative(key)

puts bs.recursive(key)
