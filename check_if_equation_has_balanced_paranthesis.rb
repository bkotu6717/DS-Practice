# Check if an equation has balanced parantheses

def isBalancedEq(equation)
    paranthesis = []
    balanced = true
    for i in 0..equation.length-1
        if equation[i] == '('
            paranthesis << '('
        elsif equation[i] == ')'
            if paranthesis.empty?
                balanced = false
                break
            else
                paranthesis.pop
            end
        end
    end
    puts "#{equation} is balanced: #{paranthesis.empty? && balanced}" 
end


isBalancedEq("(a+b)*(-d)")
isBalancedEq("(a+b)*(-d")

isBalancedEq("a+b)*((-d))")

isBalancedEq("(a)+(b)")
