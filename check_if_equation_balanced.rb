def isBalancedEq(eq)
    balanced = true
    symbols = []
    for i in 0..eq.length-1
        if ['{', '[', '('].include?eq[i]
            symbols.push(eq[i]) 
        elsif ['}', ']', ')'].include?(eq[i])
            return !balanced if symbols.empty?
            symbol = symbols.pop
            diff = (symbol.ord - eq[i].ord).abs
            if diff == 1 || diff == 2
                next
            else
                balanced = false
                break
            end
        end
    end
    balanced
end

puts isBalancedEq('{([a+b]*[c-d])/e}')
puts isBalancedEq('([a+b]*{[c-d])/e')

puts isBalancedEq('([a+b]*[c-d])/e}')
puts isBalancedEq('{([a+b)*[c-d]]/e')
