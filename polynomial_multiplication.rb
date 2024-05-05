# Polynomial multiplication

b = [[1,1], [1,0]]
a = [[1,2], [1,1], [1,0]]


inner_terms = []
b.each do |b_term|
    a.each do |a_term|
        inner_terms << [b_term[0]*a_term[0], b_term[1]+a_term[1] ]
    end
    puts "\n"
    print inner_terms
end

hash = Hash.new
inner_terms.each do |term|
   if hash.has_key?(term)
        hash[term] = [term[0]+ hash[term][0], term[1]]
   else
       hash[term] = term
   end
end

puts "\n"
terms = []
hash.values.each do |term|
    terms << "#{term[0]}X#{term[1]}"
end

puts "\n"
puts terms.join(' + ')
