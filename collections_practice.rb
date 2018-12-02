require 'pry'
def begins_with_r(collection)
  collection.all? do |element|
    element.match(/^r/)
  end
end

def contain_a(collection)
  collection.select do |element|
    element.include? "a"
  end
end

def first_wa(collection)
  collection.find do |element|
    element.match(/^wa/)
  end
end

def remove_non_strings(collection)
  collection.select do |element|
    element.class == String
  end
end

def count_elements(collection)
  names = []

  collection.each do |element|
    names << element[:name]
  end

  names_uniq = names.uniq
  new_collection = []

  names_uniq.each do |name|
    count = names.count(name)
    new_collection << {:name => name, :count => count}
  end

  new_collection
end

def find_persons_data(data, name)
  data.each do |element|
    return element[name] if element.has_key? name
  end
end

def find_names(keys)
  names = []
  keys.each do |element|
    names << element[:first_name]
  end
  names
end

def find_persons_motto(keys, name)
  keys.each do |element|
    return element[:motto] if element[:first_name] == name
  end
end

def merge_data(keys, data)
  names = find_names(keys)

merged_data = []

  names.each do |name|
    persons_data = find_persons_data(data, name)
    persons_merged_hash = {}
    persons_merged_hash[:first_name] = name
    persons_merged_hash[:awesomeness] = persons_data[:awesomeness]
    persons_merged_hash[:height] = persons_data[:height]
    persons_merged_hash[:last_name] = persons_data[:last_name]
    persons_merged_hash[:motto] = find_persons_motto(keys, name)
    merged_data << persons_merged_hash
  end

  merged_data
end

def find_cool(collection)
  collection.select do |element|
    element[:temperature] == "cool"
  end
end

def get_locations(collection)
  locations = []
  collection.each do |key, value|
    locations << value[:location]
  end
  locations.uniq
end

def get_schools_at_location(collection, location)
  schools = []
  collection.each do |key, value|
    schools << key if value[:location] == location
  end
  schools
end

def organize_schools(collection)
  locations = get_locations(collection)
  organized_schools = {}
  locations.each do |location|
    organized_schools[location] = get_schools_at_location(collection, location)
  end
  organized_schools
end
