a = [0,1,2,3,4,5,6]
b = [4,5,6,7,8,9]
c = []
m = a.length
n = b.length
i = j = k = 0
while(i< m && j<n)
    
    if (a[i] < b[j]) && (c[k-1] != a[i])
        c[k] = a[i]
        i += 1
        k += 1
    elsif (b[j] < a[i]) && (c[k-1] != b[j])
        c[k] = b[j]
        j += 1
        k += 1
    else (a[i] == b[k])
        i += 1
        j += 1
    end
end

print c
