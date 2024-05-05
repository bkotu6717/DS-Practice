# Identify elements and locations in a toeplitz matrix using single dimentional array

toeplitz_matrix = [
        [2,3,4,5,6],
        [7,2,3,4,5],
        [8,7,2,3,4],
        [9,8,7,2,3],
        [10,9,8,7,2]
    ]
    

sd_array = [2,3,4,5,6,7,8,9,10]
n = 4
for i in 0..n
    for j in 0..n
        value_at = nil
        if(i <= j)
            value_at = j-i
        elsif (i > j)
            value_at = n+i-j
        end
        print "#{sd_array[value_at]} "
    end
    puts "\n"
end

# Build single dimentional array from toplitz matrix
sd_array_2 = []
row = []
column = []
for j in 0..n
    row << toeplitz_matrix[0][j]
    column << toeplitz_matrix[j][0] if !j.zero?
end
print (row | column)
