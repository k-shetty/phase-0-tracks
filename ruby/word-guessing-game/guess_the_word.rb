#pseudocode for challenge
# Take input and pass it through initialize method to start game (this becomes the secret word I guess)
# 	-input needs to be hidden from player
# 	-input length determines number of avaiable guesses
# Player has certain number of tries to guess some letters of input word.
# 	-method for this takes player input for character (handled by driver code), compares it to secret word
#	-if player has matching character, then method returns secret word with correctly guessed characters displayed 
#	 but everything else still hidden.
#   -if player guess doesn't match, return last correct state of hidden word
#	-for every guess, one gets removed from total tries
# Once guesses are over, player has one final chance to guess the word
# =>-allows player to type out word of they know it
# Pass message onto player if game is won or lost.


class GuessWordGame
	attr_reader :secret_word, :number_of_guesses, :user_word
	
	def initialize(word)
		@secret_word = word
	end

	def total_guesses()
		if @secret_word.length > 1 && @secret_word.length <5
			@number_of_guesses = 6
		elsif @secret_word.length > 4 && @secret_word.length <10
			@number_of_guesses = 7
		elsif @secret_word.length > 9 && @secret_word.length <16
			@number_of_guesses = 8
		elsif @secret_word.length > 15 && @secret_word.length <20		
			@number_of_guesses = 9
		else
			@number_of_guesses = 10
		end
	end

	def convert_secret_word()
		temp = @secret_word.split('')
		@user_word = temp.map do |letter|
			"_"
		end
		@user_word.join(' ')
	end

	def check_secret_word()
	end

end

# game = GuessWordGame.new("surface")
# # #  p game.secret_word
# # p game.total_guesses

# # p game.number_of_guesses
# p game.secret_word_convert
# p game.user_word.
