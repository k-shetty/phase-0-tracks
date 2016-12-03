	One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.

	Guesses are limited, and the number of guesses available is related to the length of the word.

	Repeated guesses do not count against the user.

	The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

	The user should get a congratulatory message if they win, and a taunting message if they lose.

Prompt user for word to be used in game.
Take input and pass it through method to start game
	-input needs to be hidden from player
	-input length determines number of avaiable guesses
Player has certain number of tries to guess some letters of input word.
Once guesses are over, player has one final chance to guess the word
Pass message onto player if game is won or lost.
