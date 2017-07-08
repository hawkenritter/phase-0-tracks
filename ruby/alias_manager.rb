#Task 1
#Chunk 1: ask for full name, split name into two strings inside array
def first_last
  puts "What is your name?"
  agent_name = gets.chomp.downcase
  name_array = agent_name.split(' ')
  p name_array#
  #Chunk 2: swap first and last name positions in the array, set equal to new variable and print the variable
  spy_array = name_array#
  spy_array[0],spy_array[1] = spy_array[1], spy_array[0]
  p spy_array#
  spy_name_swap = spy_array.join(' ')
  puts "Here is the name with first and last swapped:"
  p spy_name_swap
end

#Task 2
list_on_names = []
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


    list_on_names << new_array.join #add string to the list of names
    p list_on_names #print list of names
  end

end





1|1995-07-01|Purchased a pair of shoes|100.0
2|1995-07-01|Purchased a pair of shoes|100.0
3|2017-08-05|Purchased a car|20000.0
4|1962|Basketball|45.0
5|1990-10-10|basketball|90.0
6|1990-10-10|bball|50.0
7|1995-01-01|notebook|25.0
8|2017-05-05|Test this label|50.0
9|2017-12-01|week 1 check|200.0
10|2017-08-09|testing negative|-500.0


#p alias_name_array
#####
#alias_name_array = []
#    agents_secret_name = new_array
#    puts alias_name_array + [agents_secret_name]
#    p alias_name_array

#list_on_names = list_on_names.to_s #convert the array so that it holds strings
   # joined_array = new_array.join #convert array of letters into a single string

#alias_name_array = ""
#  alias_name_array << new_array.join
#  p alias_name_array