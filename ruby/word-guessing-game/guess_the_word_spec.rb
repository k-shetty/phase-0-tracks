require_relative 'guess_the_word'

describe GuessWordGame do
	let (:game) { GuessWordGame.new("surface") }
	
	it "takes the given word and turns it into the secret word" do
		expect(game.secret_word).to eq("surface")
	end

	it "takes the secret word and gives the user a number of tries based on word length" do
		expect(game.total_guesses).to eq(7)
	end

	it "checks to see if instance variable number_of_guesses matches output of instance method total_guess" do
		expect(game.total_guesses).to eq(game.number_of_guesses)
	end

	it "takes the secret word and returns a string with the letters replaced with _" do
		expect(game.convert_secret_word).to eq("_ _ _ _ _ _ _")
	end

end
