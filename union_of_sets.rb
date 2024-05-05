array_one = [1,2,3,4,5,6,7,25,26]
array_two = [4,5,6,7,7,8,9,9,10,10,11]

m =  array_one.length
n = array_two.length

result_array = Array.new()

i= j = k = 0

while (i < m && j < n) do
    if (array_one[i] < array_two[j])
        if result_array[k-1] != array_one[i]
            result_array[k] = array_one[i]
            k = k + 1
        end
        i += 1
    elsif (array_two[j] < array_one[i])
        if result_array[k-1] != array_two[j]
            result_array[k] = array_two[j]
            k = k + 1
        end
        j += 1
    elsif (array_one[i] == array_two[j]) && (result_array[k-1] != array_one[i])
        result_array[k] = array_one[i]
        k += 1
        i += 1
        j += 1
    else
        i += 1
        j += 1
    end
end

while i < m do
    if result_array[k-1]!= array_one[i]
         result_array[k] = array_one[i]
          k += 1
    end
    i += 1
end

while (j < n) do
    if result_array[k-1] != array_two[j]
        result_array[k] = array_two[j]
        k += 1
    end
    j += 1
end

puts "Final result array-----> #{result_array}"
