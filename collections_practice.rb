require "pry"

def begins_with_r(array)
  array.all? {|string| string[0] == "r"}
end

def contain_a(array)
  array.select {|string| string.include?("a")}
end

def first_wa(array)
  array.find {|string| string[0..1] == "wa"}
  #.find returns first true
  # or {|string| string[0] == "w" && string[1] == "a"}
end

def remove_non_strings(array)
  array.select {|item| item.class == String}
end

def count_elements(array)
  name_array = array.uniq
  for item in name_array
    item[:count] = array.count(item)
  end
  name_array
end

def merge_data(array1, array2)
  array1.collect do |item|
    item.merge(array2[0].shift[1])
  end
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        cool_hashes << hash
        return cool_hashes
      end
    end
  end
end
#array 'cool' has format [{...}, {...}] so you need to iterate through each hash first

def organize_schools(schools)
  organized = {}
  schools.each do |school_name, city|
    if organized.keys.include?(city[:location])
      organized[city[:location]] << school_name
    else
      organized[city[:location]] = [school_name]
    end
  end
  return organized
end
