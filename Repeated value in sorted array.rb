# Find repeated elements in a sorted array

a = [3,6,8,8,10,12,15,15,15,20]
last_repeated = a[0]

for i in 0..(a.length-2)
    if (a[i] == a[i+1]) && (last_repeated != a[i])
        last_repeated = a[i]
        puts "#{last_repeated} has repeated"
    end
end

puts "\n\n"

# Find number count of each repeated element in the sorted array
i = 0
while(i < a.length-2)
    if a[i] == a[i+1]
        j = i + 1
        while( (a[j] == a[i]) && (j < a.length-1))
            j += 1
        end
        puts "#{a[i]} has repeated #{j-i} times"
        i = j
    end
    i += 1
end
