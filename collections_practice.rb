# your code goes here
def begins_with_r(array)
    flag = true
  array.each do |element|
    flag = false if element[0] != "r"
  end
  flag
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find {|word| word[0..1] == 'wa'}
end

def remove_non_strings(array)
  container = []
    array.each do |element|
      container << element if element.is_a?(String)
    end
    container
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
   new_prop_hash = {}
   arr1.each do |new_attr_hash|
     if new_attr_hash[:first_name] == name
       new_prop_hash = prop_hash.merge(new_attr_hash)
     end
   end
   new_prop_hash
 end
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
