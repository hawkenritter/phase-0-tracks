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
interior_client_list[:client_name] = the_clients_name
interior_client_list[:children_in_house] = number_of_children
interior_client_list[:decor_theme] = decor_theme_stated
interior_client_list[:bedrooms_in_house] = house_size
#do these need to be => ???

p interior_client_list[:client_name]

p interior_client_list

#give the user the opportunity to update a key
#create loop so they can keep adding new keys
  while true
    puts "Do you want to update any of your criteria information? Yes or No:"
    input = gets.chomp
      if input.downcase == "yes"
        puts "Please specify which category, or specify a new category:(client_name, children_in_house, decor_theme, bedrooms_in_house)"
        category_update = gets.chomp.to_sym
        puts "what would you like to update in #{category_update}"
        interior_client_list[category_update] = gets.chomp
        #edge cases?
      else
        break
      end
  end
p interior_client_list


#started with a big long conditional loop but after watching the array/hash videos I realized there was a better way. (tyler from office hours helped point me in the right direction)

#  if category_update == "name"
#      puts "What is the updated name?"
#      new_name = gets.chomp
#      interior_client_list[:client_name] = new_name#

#    elsif category_update == "children"
#      puts "How many children do you have?"
#      children_revised = gets.to_i
#      interior_client_list[:children_in_house] = "#{children_revised}"
#    elsif category_update == "decor"
#      puts "What theme would you like?"
#      updated_decor = gets.chomp
#      interior_client_list[:decor_theme] = "#{updated_decor}"
#    else category_update == "bedrooms_in_house"
#      puts "How many bedrooms do you have?"
#      updated_bedroom_count = gets.to_i
#      interior_client_list[:bedrooms_in_house] = updated_bedroom_count
#    end#

#  else
#    puts "Okay great!"
#  end



#create loop
