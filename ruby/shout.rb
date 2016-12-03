module Shout
	#we'll put some methods here soon, but this code is fine for now!
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words.upcase + "!" + " :D"
	end
end

# p Shout.yell_angrily("This is just a test")
# p Shout.yell_happily("I'm getting the hang of this")

