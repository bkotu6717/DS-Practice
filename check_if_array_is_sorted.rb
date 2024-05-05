# Check if array is sorted

a = [1,2,3,4,5,6,7,8,9,10]

def sorted_by_asc(a)
    for i in 0..(a.length - 2)
        return false if a[i] > a[i + 1]
    end
    true
end


def sorted_by_desc(a)
    for i in 0..(a.length - 2)
        return false if a[i] < a[i + 1]
    end
    true
end

# Method 2

# Check if array is sorted

a = [1, 5, 2, -4, -2, -5, 4, -3, 3, -1]


i = 0
j = a.length - 1

while( i <= j)
    loop do
        break if (a[i] > 0) || (i > j)
        i += 1
    end
    
    loop do
        break if (a[j] < 0) || (j < i)
        j -= 1
    end
    puts "i: #{i}, j: #{j}"
    if (i <= j)
        a[i], a[j] = a[j], a[i]
        i += 1
        j -= 1
    end
end



print "result array: #{a}"