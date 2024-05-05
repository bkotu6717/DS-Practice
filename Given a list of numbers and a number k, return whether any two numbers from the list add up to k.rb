#Given a list of numbers and a number k, return whether any two numbers from the list add up to k
a = [10, 15, 3, 7]
k = 17
i = 0
j = a.length - 1

while i < j  do
    if (a[i] + a[j] == k)
        print a[i]
        print a[j]
        break
    end
    i += 1
    j -= 1
end
