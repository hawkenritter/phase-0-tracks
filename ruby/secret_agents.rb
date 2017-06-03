#An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made
def encrypt(string) #encrypt method takes in a parameter that we want to alter
  index = 0 #The encryption will begin on the first letter i.e. index position 0
  estring = "" #this is the encrypted string, since the loop hasn't started it is empty
  while index < string.length #We want the loop to run until all of the letters are finished encrypting
    current_letter = string[index] #define variable for the targeted letter in the string
    if current_letter == "z" #if this letter is z we dont want it to encrpyt to 'aa' so we have to explicitly tell it to print 'a'
      estring += "a"
    else
      estring += string[index].next #if the targeted letter isn't 'z' then we just want the letter to change to the next in the alphabet.. use built in method '.next'
    end
    index += 1 #avoids infinite loop, moves on to the next index position in the string
  end
  estring #prints the result that we are adding to on line 4
end

# create decrypt method for reversing encrypt process above

def decrypt(passphrase)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  counter = 0 #we will start the loop on the index position 0
  result = "" #our result is empty as of right now.
  while counter < passphrase.length #we only want the loop to run as long as their is another letter to decrypt.
    current_index = alphabet.index(passphrase[counter]) #Records where the  current letter is in the alphabet so that we can use that location to get to the previous letter
    previous_index = current_index - 1 #If our passphrase counter is pointing to the letter 'g' we want to get to the location of letter f, so we move back one in the alphabet index which we saved as a string on line 20
    decrypted_letter = alphabet[previous_index] #To actually get the letter we use the normal syntax for sorting through an index i.e. alphabet[index_number]. If previous index is 4, then decrypted_letter would be 'e'
    result += decrypted_letter #Our result is empty until we tell it to add the letter from our decrypted variable named above.
    counter += 1 #The loop will repeat until counter is no longer less than passphrase.length
  end
  result #print the final result once the loop terminates
end

#p encrypt("abc")
#p encrypt("zed")
#p decrypt("bcd")
#p decrypt("afe")

#p decrypt(encrypt("swordfish"))
#p encrypt("swordfish")

#ask the user if they would like to encrypt or decrypt. gets.chomp their answer and save as a variable
puts "Would you like to decrypt or encrypt a password?"
password_task = gets.chomp

#Ask the user for a passphrase, save phrase in another variable
puts "What is the password?"
password_given = gets.chomp

#Conditional statement, find out if they want to encrypt or decrypt and run the corresponding method depending on what they say
if password_task == "decrypt"
  puts decrypt(password_given)
else
  puts encrypt(password_given)
end