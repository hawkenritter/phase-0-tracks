#Task 1
#Chunk 1: ask for full name, split name into two strings inside array
def first_last
  puts "What is your name?"
  agent_name = gets.chomp
  name_array = agent_name.split(' ')
  p name_array

  #Chunk 2: swap first and last name positions in the array, set equal to new variable and print the variable
  spy_array = name_array

  spy_array[0],spy_array[1] = spy_array[1], spy_array[0]
  p spy_array

  spy_name = spy_array.join(' ')
  p spy_name
end

#Task 2

def name_encryptor
  puts "What is your name agent?"
  agent_name = gets.chomp.downcase
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
  new_array.join
end

################






