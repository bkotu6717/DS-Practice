# Hello World Program in Ruby
a = [1,1,3,4,5,6,8,9,9,10,12,14]

i = 0; j = a.length-1
sum = 10

while(i<j) do
    temp_sum = a[i] + a[j]
    if (temp_sum == sum)
        puts "pair elements #{a[i]}, #{a[j]}"
        i +=1
        j -=1
    elsif temp_sum < sum
       i +=1
    else
       j -=1
    end
end
