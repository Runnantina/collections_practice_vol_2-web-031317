# your code goes here
def begins_with_r(array)
  # array.include?(array.index{|first_letter| first_letter == })

    i = 0
    all_start_with_r = true
    while i < array.length
      if !array[i].start_with?("r")
        all_start_with_r = false
      end
      i += 1
    end
    return all_start_with_r
end

def contain_a(array)
  words_with_A = []
  i = 0
  while i < array.length
    if array[i].include?("a")
      words_with_A << array[i]

    end
      i += 1
  end
    words_with_A
end

def first_wa(array)
  first_wa_element = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa_element = element
      break
    end
  end
  first_wa_element
end

def remove_non_strings(array)
  string_holder = []
  array.each do |element|
    string_holder << element if element.is_a?(String)
  end

  string_holder

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



def merge_data(keys, data)
  merged_folder = []
  keys.each do |name|
    person_name = name[:first_name]
    data.each do |person_data|
      if person_data[person_name]
        merged_person = person_data[person_name]
        merged_person[:first_name] = person_name
        merged_folder << merged_person
      end
    end
  end
  merged_folder
end

def find_cool(array)
  contains_cools = []
  array.each do |word|
    contains_cools << word if word[:temperature] == "cool"
  end
  contains_cools
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
