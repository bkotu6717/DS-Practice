# Hello World Program in Ruby
puts "Hello World!";

a = [1,2,3,6,7,9,21]

diff = 1
puts "Missing numbers:"
for i in 1..a.length-2
    if (a[i+1]-a[i]) != diff
        new_diff = a[i+1] - a[i]
        new_value = a[i] + diff
        puts new_value
        # puts new_diff
        (new_diff-2).times do
            new_value = new_value + diff
            puts new_value
        end
    end
end
