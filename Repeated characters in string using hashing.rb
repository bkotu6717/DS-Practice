str = "abbcccdddd"

arr = Array.new(25, 0)

for i in 0..str.length-1
    value_index = str[i].ord - 97
    puts "value_index: #{value_index}"
    arr[value_index] += 1
end

print arr
