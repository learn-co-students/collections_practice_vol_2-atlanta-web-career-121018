# #begins_with_r
#   Return true if every element of the tools array starts with an "r" and false otherwise.
#   should return false if there's an element that does not begin with r

def begins_with_r (array)
    array.all? {|string| string.start_with?('r') ? true : false }
end

##===OR===##

# def begins_with_r (array)
#   checkarr = []
#   array.collect do |x|
#     if x.start_with?("r") == false
#       checkarr.push("false")
#     else
#       checkarr.push("true")
#     end
#   end
#   if checkarr.any? { |word| word == "false" }
#     return false
#   else
#     return true
#   end
# end




# #contain_a - return all elements that contain the letter 'a'

def contain_a (array)
    array.select{|string| string.include?('a')}
end

##===OR===##

# def contain_a (array)
#     returnarr = []
#     array.each do |x|
#         if x.to_s.include?("a") == true
#             returnarr << x
#         end
#     end
#     return returnarr
# end




# #first_wa - Return the first element that begins with the letters 'wa'
def first_wa (array)
    array.find {|string| string.to_s.start_with?('wa')}
end

##===OR===##

# def first_wa (array)
#     array.detect do |x|
#           x.to_s.start_with?("wa")
#     end
# end




# #remove_non_strings - remove anything that's not a string from an array

def remove_non_strings (array)
    array.select {|string| string.is_a?(String)}
end

##===OR===##

# def remove_non_strings(array)
#     returnarr = []
#     nonreturmarr = []
#     array.each do |x|
#         if x.is_a?(String)
#             nonreturmarr << x
#         else
#             returnarr << x
#         end
#     end
#     return nonreturmarr
# end




# #count_elements - count how many times something appears in an array

def count_elements (array)
    # array.count {|name| name > 0}
    array.group_by(&:itself).map{|key, value| key.merge(count: value.length)}
end






# #merge_data - combines two nested data structures into one

def merge_data (keys, data)
    merged = []
    keys.each do |x|
        data.first.map do |key, value|
            if x.values[0] == key
                merged << x.merge(value)
            end
        end
    end
    merged
end




# #find_cool - find all cool hashes

def find_cool(hash)
    hash.select{|hash| hash.has_value?('cool')}
end




# #organize_schools - organizes the schools by location

def organize_schools (hash)
    location = {}
    hash.collect do |key, value|
        location[value[:location]] = []
    end
    location.each do |key1, value1|
        hash.each do |key2, value2|
            if key1 == value2[:location]
                value1 << key2
            end
        end
    end
end

# {
#    "flatiron school bk" => {:location => "NYC"},
#    "flatiron school" => {:location => "NYC"},
#    "dev boot camp" => {:location => "SF"},
#    "dev boot camp chicago" => {:location => "Chicago"},
#    "general assembly" => {:location => "NYC"},
#    "Hack Reactor" => {:location => "SF"}
#  }
# }
# return {
#  {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#   "SF"=>["dev boot camp", "Hack Reactor"],
#   "Chicago"=>["dev boot camp chicago"]}
# }
