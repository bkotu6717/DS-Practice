# Evaluate ploynomial
    
def display_polynomial_equation(polynomial_array)
    terms = []
    polynomial_array.each do |term|
        terms << "#{term[0]}X(#{term[1]})"
    end
    print terms.join(' + ')
end



def power(x, n)
    return 1 if n == 0 || x == 1
    return x if n == 1
    prod = power(x, n/2)
    prod *= prod  if n.even?
    prod *= (x * prod) if n.odd?
    return prod
end

def evaluate_polynomial(polynomial_array, variable)
    sum = 0
    polynomial_array.map do |term|
        sum += term[0]*power(variable, term[1])
        puts "sum: #{sum}"
    end
    puts "Evaluated ploynomial sum: #{sum}"
end

puts power(2,6)

polynomial_array = [
    [3,5],
    [2,4],
    [5,2],
    [2,1],
    [7,0]
]  
display_polynomial_equation(polynomial_array)
evaluate_polynomial(polynomial_array, 2)
