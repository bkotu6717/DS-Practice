a = [1,2,3,4,5,6,7,8,9,10].shuffle

print a

if a[0] > a[1]
    first_max = a[0]
    second_max = a[1]
else
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

puts first_max 
puts second_max
