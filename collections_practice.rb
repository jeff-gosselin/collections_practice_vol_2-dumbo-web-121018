require 'pry'
def begins_with_r(array)
  test = array.map { |word| word.start_with?('r') }
  result = test.include?(false)
  !result
end

def contain_a(array)
  new_array = []
  array.each { |word| new_array.push(word) if word.include?("a")}
  new_array
end

def first_wa(array)
  new_array = []
  converted = array.map { |word| word.to_s }
  converted.each { |word| new_array.push(word) if word.start_with?("wa")}
  new_array[0]
end

def remove_non_strings(array)
  new_array = []
  array.each { |elem| new_array.push(elem) if elem.class == String }
  new_array
end

def count_elements(array)
  i = 0
  unique = array.uniq
  while i < unique.length
    matches = array.select {|x| x == unique[i]}
    unique[i][:count] = matches.length
    i += 1
  end
  unique
end

def merge_data(keys, data)
  merged = []
  blake_key = keys.select {|x| x[:first_name] == "blake"}
  blake_data = data[0]["blake"]
  
  blake_hash = blake_key[0].merge(blake_data)

  ashley_key = keys.select {|x| x[:first_name] == "ashley"}
  ashley_data = data[0]["ashley"]
  ash_hash = ashley_key[0].merge(ashley_data)
  
  merged << blake_hash
  merged << ashley_key
end

def find_cool(temp)
  temp.select {|elem| elem[:temperature] == "cool" }
end

def organize_schools(schools)
  schools.each do |name, loc_hash|
    location = loc_hash[:location]
    binding.pry
    
  end
    
    
  
  # sf = schools.select {|val| val[:location] == "SF"}
end