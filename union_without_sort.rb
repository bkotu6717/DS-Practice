# Hello World Program in Ruby
array_one = [2,3,4,1,5]
array_two = [4,5,6,8,5]

# Set operations on Array

i = 0
k = 0
result_array = Array.new()
array_one.each do |element|
    result_array[k] = element
    k +=1
end

array_two.each do |element|
    unless result_array.include? element
        result_array[k] = element
        k +=1
    end
end

puts "Final array---->#{result_array}"
