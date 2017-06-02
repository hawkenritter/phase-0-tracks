#An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made
def encrypt(string = "ballz")
  index = 1
  estring = "c"
  while index < string.length
    current_letter = string[index]
    if current_letter == "z"
      estring += "a"
    else
      estring += string[index].next
    end
    index += 1
  end
  estring
end

# create decrypt method for reversing encrypt process above

def decrypt(passphrase)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  counter = 0
  result = ""
  while counter < passphrase.length
    current_index = alphabet.index(passphrase[counter])
    previous_index = current_index - 1
    decrypted_letter = alphabet[previous_index]
    result += decrypted_letter
    counter += 1
  end
  result
end

p decrypt("bdf") == "ace"
p decrypt("ballz") == "azkky"
p encrypt("ballz") == "cbmma"
p encrypt("ballz")
