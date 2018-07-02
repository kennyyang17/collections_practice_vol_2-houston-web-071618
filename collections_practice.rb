# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
    array.find_all {|word| word.include?("a")}
end


def first_wa(array)
   array.find {|prefix| prefix.to_s.include?("wa")}
 end



def remove_non_strings(array)
	array.delete_if {|string| string.class != String}
 end



 def count_elements(array)
   array.sort_by do |hash|
     hash[:name]
   end

   array_w_count = []
   count = 1;
   prev = array[0]

   for i in 1..(array.size-1)
     if(array[i] == prev)
         count += 1
     else
       array_w_count << prev.merge({:count => count})
       prev = array[i]
       count = 1
     end
   end
   array_w_count << prev.merge(:count => count)
   array_w_count
 end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]

    otherObject.each do |property,value|
      object[property] = value
    end
  end
end

def find_cool(array)
  array.select do |item|
    item.has_value?('cool')
    # item.values == 'cool'
  end
end

def organize_schools(schools)
   schools_by_location = {}
   schools.each do |key, value|
     if(schools_by_location[value[:location]] == nil)
       schools_by_location[value[:location]] = [key]
     else
       schools_by_location[value[:location]] << key
     end
   end
   schools_by_location
 end
