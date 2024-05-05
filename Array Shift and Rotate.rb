# # reverse_array_inplace

# def reverse_array_inplace
#     arr = Array.new(10){rand(1..100)}
#     print arr
#     j = arr.length - 1
#     for i in 0..(arr.length-1)/2
#         arr[i], arr[j] = arr[j], arr[i]
#         j -= 1
#     end
#     puts "\n"
#     print arr
# end

# # left_shift_arr


# def left_shift_arr
#     arr = Array.new(10){rand(1..100)}
#     print arr
#     for i in 0..arr.length-2
#         arr[i] = arr[i+1]
#     end
#     arr[arr.length-1] = nil
#     puts "\n"
#     print arr
# end

# def left_rotate_arr(rotate_count)
#     arr = [77, 73, 17, 57, 100, 87, 10, 36, 7, 11] #Array.new(10){rand(1..100)}
#     print arr
    
#     rotate_count.times do
#         first_element = arr[0]
#         for i in 0..arr.length-2
#             arr[i] = arr[i+1]
#         end
#         arr[arr.length-1] = first_element
#         puts "\n"
#         print arr
#     end
#     puts "\n"
# end

# left_rotate_arr(10)

def right_rotate_arr(rotate_count)
    arr = [77, 73, 17, 57, 100, 87, 10, 36, 7, 11] #Array.new(10){rand(1..100)}
    print arr
    rotate_count.times do
        last_element = arr[arr.length-1]
        i = arr.length - 1
        while( i >= 1)
            arr[i] = arr[i-1]
            i -= 1
        end
        arr[0] = last_element
        puts "\n"
        print arr
    end
    puts "\n"
end

right_rotate_arr(1)

# def right_shift_arr
#     arr = Array.new(10){rand(1..100)}
#     print arr
#     arr[arr.length-1] = nil
#     puts "\n"
#     print arr
#     puts "\n"
#     print arr.compact

# end

# right_shift_arr
