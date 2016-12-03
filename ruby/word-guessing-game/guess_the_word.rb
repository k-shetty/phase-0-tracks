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
	def intialize(word)
		@secret_word = word
		@guess_count = 0
	end

	def num_of_guesses(word)
		@guess_count
	end

	def secret_word_convert(word)

	end

end