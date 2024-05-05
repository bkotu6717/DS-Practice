a = [1,2,3,4,5]
b = [-5,-4,-3,-2,-1,0,1,2,3,4,5]

print a
puts "\n"
print b
puts "\n"
c = Array.new(a.length+b.length)

i, j, k = 0, 0, 0
while ( i < a.length && j < b.length)
    if(a[i] < b[j])
        c[k] = a[i]
        k += 1
        i += 1
    elsif (b[j] < a[i])
        c[k] = b[j]
        k += 1
        j += 1
    else
        c[k] = b[j]
        c[k+1] = a[i]
        k += 2
        i += 1
        j += 1
    end
end

while(i<a.length)
    c[k] = a[i]
    i += 1
    k += 1
end

while(j<b.length)
    c[k] = b[j]
    j += 1
    k += 1
end

print c
