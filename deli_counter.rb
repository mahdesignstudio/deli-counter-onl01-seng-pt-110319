#describe katz_deli as an empty array 

katz_deli = [] 

#describe take_a_number: It should add a person to the line. Receives take_a_number(katz_deli, name), Outputs "Welcome, name. You are array.index(name) in line"

def take_a_number(array, name)
  array.push(name)
  position = array.index(name)
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."
  return name, position 
end 

take_a_number(katz_deli, "Morgan")
take_a_number(katz_deli, "Rob")
take_a_number(katz_deli, "Rebecca")

def line(array) 
  if array.length == 0 
    puts "The line is currently empty."
  else 
    message = "The line is currently:"
    array.each_with_index do |value, index| 
    message += " #{index.to_i+1}. #{value}"
  end 
  puts "#{message}"
  end 
end 
 
line(katz_deli)


def now_serving(array)
  if array.empty? == true 
    puts "There is nobody waiting to be served!"
  elsif array.empty? == false 
    puts "Currently serving #{array.shift}."
  end 
end 

now_serving(katz_deli)