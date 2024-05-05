str = "abbccc"

h = 0
for i in 0..str.length-1
    x = 1
    puts "\nchar is #{str[i]}, diff is: #{str[i].ord - 97}"
    x = x << (str[i].ord - 97)
    puts "after shifting X #{x.to_s(2)}"
    
    if (h & x) > 0
        puts "#{str[i]} is repeated."
    else
        h = h | x
        puts "after masking h is #{h} and binary is #{h.to_s(2)}"
    end
end
