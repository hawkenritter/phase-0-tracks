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
    @secret_array = secret_word.split(',')
    @guess_count = 0
    @is_over = false
    @guessed_array = Array.new(secret_word.length, "_")
    @already_guessed = []
  end

    #show the secret count to the user, they have this many guesses left

    #  def guesses_left
    #    p secret_word.length * 2
    #  end
    #show the remaining letters that still need to be guessed based on length of word

  def check_letter(guessed_letter)
    @guess_count = 0
    @already_guessed << guessed_letter
    while @guess_count < secret_word.length
      if secret_array.include? guessed_letter
       @secret_array.each do |i|
          if @secret_array[i] == guessed_letter
            @guessed_array[i] == guessed_letter
          end
        end
      else
        @guess_count += 1
      end
      if @secret_array == @guessed_array
        puts "You win!"
      end
    end
    @guessed_array.join(" ")
  end

  def letters_remaining
    @guessed_array.join('')
    #@already_guessed
  end

end

game = GuessingGame.new("apple")
p game.letters_remaining
game.check_letter("a")
p game.letters_remaining

