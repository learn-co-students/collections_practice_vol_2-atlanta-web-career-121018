  # #begins_with_r
  #   Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
  #   should return false if there's an element that does not begin with r (FAILED - 2)
def begins_with_r (array)
  checkarr = []
  array.collect do |x|       
    if x.start_with?("r") == false
      checkarr.push("false")
    else
      checkarr.push("true")
    end
  end
  if checkarr.any? { |word| word == "false" }
    return false
  else
    return true
  end
end
  
  
  
  
  # #contain_a
  #   return all elements that contain the letter 'a' (FAILED - 3)
  def contain_a (array)
    returnarr = []
    array.each do |x|
      if x.to_s.include?("a") == true
        returnarr << x
      end
    end
    return returnarr
  end
  
  
  
  
  
  
  
  # #first_wa
  #   Return the first element that begins with the letters 'wa' (FAILED - 4)
  def first_wa (array)
    array.detect do |x|
      x.to_s.start_with?("wa")
    end
  end
  
  
  
  
  # #remove_non_strings
  #   remove anything that's not a string from an array (FAILED - 5)
  def remove_non_strings(array)
    returnarr = []
    nonreturmarr = []
    array.each do |x|
      if x.is_a?(String)
        nonreturmarr << x 
      else
        returnarr << x 
      end
    end
    return nonreturmarr
  end
  
  
  
  
  
  
  # #count_elements
  #   count how many times something appears in an array (FAILED - 6)
  def count_elements (array)
    # array.count {|name| name > 0}
  end
  
  
  
  
  
  
  # #merge_data
  #   combines two nested data structures into one (FAILED - 7)
  def merge_data (array1, array2)
    
  end
  
  
  
  
  
  
  
  # #find_cool
  #   find all cool hashes (FAILED - 8)
  
  
  
  
  
  
  
  # #organize_schools
  #   organizes the schools by location (FAILED - 9)






