# Check if 2 strings are angram by using bitwise operators
str = 'abbccc'

h = 0
for i in 0..str.length-1
    x = 1
    x = x << str[i].ord - 97
    if (h & x) > 0
        next
    else
        h = h | x
    end
end

str = "eabcd"
for j in 0..str.length-1
    x = 1
    x = x << (str[j].ord - 97)
    if (h & x) > 0
        puts "repeated: #{str[j]}"
    else
        puts "Not anagrams"
        break
    end
end
