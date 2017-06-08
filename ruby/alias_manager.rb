#Task 1
#Chunk 1: ask for full name, split name into two strings inside array
#def first_last
#  puts "What is your name?"
#  agent_name = gets.chomp.downcase
#  name_array = agent_name.split(' ')
#  p name_array#
#  #Chunk 2: swap first and last name positions in the array, set equal to new variable and print the variable
#  spy_array = name_array#
#  spy_array[0],spy_array[1] = spy_array[1], spy_array[0]
#  p spy_array#
#  spy_name_swap = spy_array.join(' ')
#  puts "Here is the name with first and last swapped:"
#  p spy_name_swap
#end

#Task 2

while true
  puts "What is your name agent? ('exit' if finished)"
  agent_name = gets.chomp.downcase
  #alias_name_array = ""
  if agent_name == "exit"
    break
  else
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    vowels = ["a", "e", "i", "o", "u"]
    name_array = agent_name.split('')
    new_array = name_array.map do |letter|
      if consonants.include?(letter)
          consonants.rotate(1)[consonants.index(letter)]
      elsif vowels.include?(letter)
        vowels.rotate(1)[vowels.index(letter)]
      else
        letter
      end
    end
    ## figure this part out, putting new string into array, it keeps replacing the existing object
    list_on_names = []

    list_on_names.push("#{new_array.join}") #add string to the list of names
    p list_on_names #print list of names
  end
  #alias_name_array = ""
#  alias_name_array << new_array.join
#  p alias_name_array
end
#p alias_name_array
#####
#alias_name_array = []
#    agents_secret_name = new_array
#    puts alias_name_array + [agents_secret_name]
#    p alias_name_array

#list_on_names = list_on_names.to_s #convert the array so that it holds strings
   # joined_array = new_array.join #convert array of letters into a single string

