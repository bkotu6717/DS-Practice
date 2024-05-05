diagonal_matrix = Array.new(5){Array.new(5, 0)}

for i in 0..4
    for  j in 0..4
        if ( i == j)
            diagonal_matrix[i][j] = i + 1
        end
    end
end

single_arr = []
for i in 0..4
    for  j in 0..4
        if ( i == j)
            diagonal_matrix[i][j] = i + 1
            single_arr[i] = i + 1 
        end
        print "#{diagonal_matrix[i][j]}  "
    end
    puts "\n"
end

puts "\n"
print single_arr

puts "\ndiagonal_matrix[0][1] = 0"
puts "\ndiagonal_matrix[1][1] = #{single_arr[1]}"
