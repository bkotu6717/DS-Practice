# Following are few observations about the next greater number.
# 1) If all digits sorted in descending order, then output is always “Not Possible”. For example, 4321.
# 2) If all digits are sorted in ascending order, then we need to swap last two digits. For example, 1234.
# 3) For other cases, we need to process the number from rightmost side 
# (why? because we need to find the smallest of all greater numbers)

# Following is the algorithm for finding the next greater number.
# I) Traverse the given number from rightmost digit, keep traversing till you find a digit which is smaller than 
# the previously traversed digit. For example, if the input number is “534976”, we stop at 4 because 4 is smaller 
# than next digit 9. If we do not find such a digit, then output is “Not Possible”.

# II) Now search the right side of above found digit ‘d’ for the smallest digit greater than ‘d’. 
#   For “534976″, the right side of 4 contains “976”. The smallest digit greater than 4 is 6.

# III) Swap the above found two digits, we get 536974 in above example.

# IV) Now sort all digits from position next to ‘d’ to the end of number. 
# The number that we get after sorting is the output. For above example, we sort digits in bold 536974. 
# We get “536479” which is the next greater number for input 534976.

def digits_are_in_descending_order?( splitted_numbers )
    splitted_numbers.each_cons(2).all? {|x,y| x >= y }
  end
  
  def digits_are_in_ascending_order?( splitted_numbers )
    splitted_numbers.each_cons(2).all? {|x,y| x <= y }
  end
  
  def next_possible_big_number( number )
    puts "\nGiven number: #{number}"
    splitted_numbers = number.to_s.split('').map {|x| x.to_i }
    if digits_are_in_descending_order?( splitted_numbers )
      puts "Next highest number not available"
    elsif digits_are_in_ascending_order?( splitted_numbers )
      temp = splitted_numbers[-1]
      splitted_numbers[-1] = splitted_numbers[-2]
      splitted_numbers[-2] = temp
      puts "Next highest number #{splitted_numbers.join('')}"
    else
      # Find the location where left < right
      digit_location = nil
      i = splitted_numbers.length - 1
      while(i > 0)
        if splitted_numbers[i] > splitted_numbers[i-1]
          digit_location = i - 1
          break
        end
        i -= 1
      end
  
      puts "Digit location: #{digit_location}"
  
      # Find the nearest big digit
      i = digit_location + 1
      least_diff = (splitted_numbers[i] - splitted_numbers[digit_location]).abs
      next_high_digit_index = i
      while(i < splitted_numbers.length)
        if (splitted_numbers[i] > splitted_numbers[digit_location])
          current_diff = (splitted_numbers[i] - splitted_numbers[digit_location])
          if current_diff < least_diff
            next_high_digit_index = i
            least_diff = current_diff
          end
        end
        i += 1
      end
  
      puts "Next highest index: #{next_high_digit_index}"
      # Perform swap
      temp = splitted_numbers[digit_location]
      splitted_numbers[digit_location] = splitted_numbers[next_high_digit_index]
      splitted_numbers[next_high_digit_index] = temp
  
      puts "After swap: #{splitted_numbers}"
  
      # Sort digits after digit_location
      splitted_numbers[(digit_location+1)..(splitted_numbers.length - 1)] = splitted_numbers[(digit_location+1)..(splitted_numbers.length - 1)].sort
  
      puts "Next highest number: #{splitted_numbers.join('')}"
    end
  end
  
  next_possible_big_number( 1234 )
  next_possible_big_number( 4321 )
  
  next_possible_big_number( 534976 )
  next_possible_big_number( 17815 )
  next_possible_big_number( 16795 )
  next_possible_big_number( 11411 )
  
  
  # Given number: 1234
  # Next highest number 1243
  
  # Given number: 4321
  # Next highest number not available
  
  # Given number: 534976
  # Digit location: 2
  # Next highest index: 5
  # After swap: [5, 3, 6, 9, 7, 4]
  # Next highest number: 536479
  
  # Given number: 17815
  # Digit location: 3
  # Next highest index: 4
  # After swap: [1, 7, 8, 5, 1]
  # Next highest number: 17851
  
  # Given number: 16795
  # Digit location: 2
  # Next highest index: 3
  # After swap: [1, 6, 9, 7, 5]
  # Next highest number: 16957
  
  # Given number: 11411
  # Digit location: 1
  # Next highest index: 2
  # After swap: [1, 4, 1, 1, 1]
  # Next highest number: 14111
  