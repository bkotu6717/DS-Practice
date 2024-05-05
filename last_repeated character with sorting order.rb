# Polindrome string verification
a = "maaaam"
i =0; j=a.length-1
is_polindrome = true

while (i< j || i != j) do
    if a[i] != a[j]
        is_polindrome = false
        break
    end
    i +=1
    j -=1
end

puts "Is poli----#{is_polindrome}"
