#create two arrays.. one is empty, with the hash marks and the other with the correct word
#iterate through the array and if you get a hit set that same position in the empty array equal to the letter

class GuessingGame
  attr_reader :guess_count
  attr_reader :secret_word
  attr_reader :secret_array
  attr_accessor :guessed_array
  #initialize the game with a secret word. split the word into an array, measure the length

  def initialize(secret_word)
    @secret_word = secret_word
    @secret_array = secret_word.split(//) # ""
    @guess_count = (@secret_array.length)
    @is_over = false
    @guessed_array = Array.new(secret_word.length, "_")
    @already_guessed = []
  end



  def check_letter(guessed_letter)
    @already_guessed << guessed_letter
    if @guess_count == 0 # == (secret_word.length * 2)
      puts "Ha! you lose"
    elsif @secret_array == @guessed_array
        puts "You win!"
    else
      #if @secret_array.include? guessed_letter
        @secret_array.each_with_index do |letter, index|

          if letter == guessed_letter #each with index
            @guessed_array[index] = guessed_letter
          end
        end
        @guess_count -= 1

    end
    p "You have #{@guess_count} guesses remaining"
    @guessed_array.join(" ")

  end

  def letters_remaining
    @guessed_array.join('')
    #@already_guessed
  end

end




game = GuessingGame.new("apple")
p game.letters_remaining
game.check_letter("e")
game.check_letter("f")
game.check_letter("l")
game.check_letter("e")
game.check_letter("a")


p game.letters_remaining

