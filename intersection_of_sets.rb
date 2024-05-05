a = [1,2,3,4,5,6,8,8]
b = [4,5,6,7,8,9]

m = a.length
n = b.length
c = []

i = j = k = 0




loop do
  break if (i >= m-1 || j >= n-1)
  puts "i: #{i}, j: #{j}, a[i]: #{a[i]}, b[j]: #{b[j]}" 
  i += 1 if(a[i] < b[j])
  j += 1 if (b[j] < a[i])
  
  if (a[i] == b[j]) && (c[k-1] != a[i])
        c[k] = a[i]
        i += 1
        j += 1
        k += 1
  end
end

print c
