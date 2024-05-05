# Sum of two polynomial equations

first_polynomial = [[3,5], [4,4], [5,3], [6,2], [7,1], [8,0]]
second_polynomial = [[1,5], [3,3], [4,2], [5,1], [6,0]]

i = 0
j = 0
terms = []
while( i < first_polynomial.length && j < second_polynomial.length)
    if(first_polynomial[i][1] == second_polynomial[j][1])
        terms << "#{first_polynomial[i][0]+second_polynomial[j][0]}X#{first_polynomial[i][1]}"
        i += 1
        j += 1
    elsif (first_polynomial[i][1] > second_polynomial[j][1])
        terms << "#{first_polynomial[i][0]}X#{first_polynomial[i][1]}"
        i += 1
    elsif (first_polynomial[i][1] < second_polynomial[j][1])
        terms << "#{second_polynomial[i][0]}X#{second_polynomial[i][1]}"
        j += 1
    end
end

puts terms.join(' + ')
