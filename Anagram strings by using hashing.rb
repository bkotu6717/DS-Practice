str = "abbcccdddd"
str1 = "abbcccdddd"

hash_array = Array.new(25, 0)
anagram_string = true;

#  if str.length != str1.length
#     puts "Given string not anagram"
#     return
#  end

for i in 0..str.length-1
  has_index = str[i].ord - 97
  hash_array[has_index] += 1
end

print hash_array

for j in 0..str1.length-1
  has_index = str1[j].ord - 97
  hash_array[has_index] -= 1
  anagram_string = false if hash_array[has_index] < 0
end

if anagram_string
    puts "Givent string is anagram" 
else
    puts "Givent string is not an anagram"
end
