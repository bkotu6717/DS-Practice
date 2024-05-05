# Check if 2 strings are anagrams - O(n²)

a = 'decimalk'
b = 'medical'

h = 0
anagram = true
for i in 0..a.length-1
    found = false
    for j in 0..b.length-1
        if a[i] == b[j]
            found = true
            break
        end
    end
    if !found
        anagram = false
        puts "not anagrams"
        break
    end
end

puts "are anagrams? #{anagram}"
