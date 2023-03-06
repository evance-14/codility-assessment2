def missing_number(elements)
    # Split the string into an array of integers
    elements_array = elements.split(" ").map(&:to_i).sort
    #{ |element| element.to_i }
  
    # Sort the array
    #sorted_array = elements_array.sort
  
    # Loop through each element in the array
    elements_array.each_with_index do |element, index|
      # Check if the element is not equal to the expected number in the sequence
      if element != index + 1
        # Return the missing number
        return index + 1
      end
    end
  
    # If all numbers are present, return 0 (not broken)
    return 0
end
 

puts missing_number("1 2 3 4 a b") # 0
puts missing_number("1 2 4 3") # 0
puts missing_number("2 1 3 a") # 1
puts missing_number("1 3 2 5") # 4
puts missing_number("1 5") # 2




def is_cube(volume, side)
    return false if volume <= 0 || side <= 0 
  
    width = volume / (side * side)
    height = volume / (side * width)
  
    if width == side && height == side
      return true
    else
      return false
    end
  end

  puts is_cube(125,2)
  puts is_cube(27,3)
