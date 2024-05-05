arr = [8,5,7]

for i in 0..arr.length-2
    current_element = arr[i+1]
    puts "Latest arr: #{arr}"
    j = i + 1
    while( j >= 0)
        if (current_element < arr[j])
            arr[j], arr[j-1] = arr[j-1], arr[j]
        end
        j -= 1
    end
end

puts arr
