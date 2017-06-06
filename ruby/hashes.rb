#ask client for their name
  puts "What is your name"
  the_clients_name = gets.chomp
  #ask client for their number of children
  puts "How many children do you have?"
  number_of_children = gets.to_i
  #ask client for decor theme
  puts "What theme are you looking for?"
  decor_theme_stated = gets.chomp
  #ask client for the number of bedrooms in the house
  puts "How many bedrooms are in your house?"
  house_size = gets.to_i

#create empty hash to record data
interior_client_list = {}
interior_client_list[:client_name] = "#{the_clients_name}"
interior_client_list[:children_in_house] = "#{number_of_children}"
interior_client_list[:decor_theme] = "#{decor_theme_stated}"
interior_client_list[:bedrooms_in_house] = "#{house_size}"

p interior_client_list[:client_name]
p interior_client_list

#give the user the opportunity to update a key
puts "Do you want to update any of your criteria information? Yes or No:"
input = gets.chomp

#conditional for choosing key they want to change, this is slow, is there a faster way to just sort through the hash? turn string into symbol -- string.to_sym
#this code doesn't scale because what if I add an item to the hash?

  if input.downcase == "yes"
    puts "Please specify which category:(name, children, decor, bedrooms)"
    category_update = gets.chomp
    if category_update == "name"
      puts "What is the updated name?"
      new_name = gets.chomp
      interior_client_list[:client_name] = "#{new_name}"
    elsif category_update == "children"
      puts "How many children do you have?"
      children_revised = gets.to_i
      interior_client_list[:children_in_house] = "#{children_revised}"
    elsif category_update == "decor"
      puts "What theme would you like?"
      updated_decor = gets.chomp
      interior_client_list[:decor_theme] = "#{updated_decor}"
    else category_update == "bedrooms_in_house"
      puts "How many bedrooms do you have?"
      updated_bedroom_count = gets.to_i
      interior_client_list[:bedrooms_in_house] = "#{updated_bedroom_count}"
    end

  else
    puts "Okay great!"
  end

p interior_client_list