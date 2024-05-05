# Lower triangular matrix - column major mapping

m = 5
n = 5
ltm = Array.new(5){Array.new(5, 0)}
sd_array = []
print ltm
puts "\n"
for i in 0..m-1
    for j in 0..n-1
        if(i >= j)
            ltm[i][j] = (i * j) + 1
        end
        print "#{ltm[i][j]}  "
    end
    puts "\n"
end

for j in 0..n-1
    for i in 0..m-1
        if ( i >= j)
            sd_array << ltm[i][j]
        end
    end
end


print sd_array
puts "\n"

def get_element_at(i, j, n, sd_array)
    if (i >= j)
        target_index = 0
        j.times do
            target_index += n
            n -= 1
        end
        target_index += (i-j)
        puts "Element at(#{i},#{j}) is #{sd_array[target_index]}" 
    else
        puts "Element at(#{i},#{j}) is 0" 
    end
end

for i in 0..m-1
    for j in 0..n-1
        get_element_at(i, j, n, sd_array)
    end
end
