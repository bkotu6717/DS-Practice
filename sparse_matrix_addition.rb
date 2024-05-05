s_matrix_a = [
    
    [0,0,0],
    [1,1,1],
    [2,2,2],
    [3,3,3],
    [4,4,4]
]

s_matrix_b = [
    [0,0,10],
    [0,4,4],
    [1,0,8],
    [1,4,2],
    [2,2,20],
    [2,4,16],
    [4,1,11]
]



# puts s_matrix_a
# puts s_matrix_b

i = 0
j = 0

result_matrix = []

while( i < s_matrix_a.length && j < s_matrix_b.length)
    if s_matrix_a[i].first(2) == s_matrix_b[j].first(2)
        value = s_matrix_a[i][-1] + s_matrix_b[j][-1]
        result_matrix << [s_matrix_a[i].first(2),value].flatten
         i += 1
         j += 1
         next
    elsif (s_matrix_a[i][0] < s_matrix_b[j][0])
        result_matrix << s_matrix_a[i]
        i += 1
        next
    elsif (s_matrix_a[i][0] > s_matrix_b[j][0])
        result_matrix << s_matrix_b[j]
        j += 1
        next
    elsif (s_matrix_a[i][0] == s_matrix_b[j][0]) && (s_matrix_a[i][1] < s_matrix_b[j][1])
        result_matrix << s_matrix_a[i]
        i += 1
        next
    elsif (s_matrix_a[i][0] == s_matrix_b[j][0]) && (s_matrix_a[i][1] > s_matrix_b[j][1])
        result_matrix << s_matrix_b[j]
        j += 1
        next
    end
        
end

print result_matrix
