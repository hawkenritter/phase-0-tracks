#An encrypt method that advances every letter of a string one letter forward. So "abc" would become "bcd". For now, you can assume lowercase input and output. Any space character should remain a space character -- no change made
def encrypt(string)
  index = 0
  estring = ""
  while index < string.length
    estring += string[index].next
    index += 1
  end
  estring
end

# create decrypt method for reversing encrypt process above

def decrypt(passphrase)
  alphabet = "abcdefg"
  counter = 0
  result = ""
  while index < passphrase.length
    current_index = alphabet.index(passphrase[counter])
    previous_index = current_index - 1
    decrypted_letter = alphabet[previous_index]
    result += decrypted_letter
    counter += 1
  end
  result
end

p decrypt("bdf")