a = [10,11,12,13,14,15,20]
low = a[1]
high = a[1]

for i in 0..(a.length-1)
    if low > a[i]
        low = a[i]
    elsif high < a[i]
        high = a[i]
    end
end

h = Array.new(high){0}
print h
for i in 0..a.length-1
    h[a[i]-1] = 1
end

puts "\n"
print h
puts "\n"
h[low..high].each_with_index do |x, i|
    next if x.odd?
    puts "x: #{x}, i: #{i+low+1}"
end
