def bubble_sort(arr)
    for i in 0..(arr.length-2)
        swapped = false
        puts "i: #{i}"
        for j in 0..(arr.length-2-i)
            if (arr[j] > arr[j+1])
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swapped = true
            end
        end
        return arr unless swapped
    end
    arr
end

p bubble_sort([8,5,7,3,2,1])
# p bubble_sort([1, 2, 3, 5, 7, 8])
# p bubble_sort([1, 2, 3, 5, 8, 7])
