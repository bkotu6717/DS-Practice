# Hello World Program in Ruby
a = [1,2,3,4,5,34,67,23]
first_max = a[0]
second_max = a[1]

if a[1] > a[0]
  first_max = a[1]
  second_max = a[0]  
end

for i in 2..a.length-1
    if a[i] > first_max
        second_max = first_max
        first_max = a[i]
    elsif a[i] > second_max
         second_max = a[i]
    end
end

puts "first ---max #{first_max}"
puts "second ---max #{second_max}"
