def begins_with_r(arr)
  arr.all? {|x| x.start_with?("r")}
end

def contain_a(arr)
  arr.select {|x| x.include?("a")}
end

def first_wa(arr)
  arr.detect {|x| x.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
  arr.reject {|x| x.to_s != x}
end

def count_elements(arr)
  counter = Hash.new(0)
  arr.collect {|i| counter[i]+=1 }
    counter.collect do |hash, number|
      hash[:count] = number
    end
  counter.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(arr)
  arr.select {|x| x if x.has_value?("cool")}
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end
