# module Shout
# 	#we'll put some methods here soon, but this code is fine for now!
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words.upcase + "!" + " :D"
# 	end
# end

# p Shout.yell_angrily("This is just a test")
# p Shout.yell_happily("I'm getting the hang of this")
module Shout
	def loud_talking(words)
		words.upcase + "!!" 
	end

	def confused_shouting(words)
		words.upcase + "??"
	end
end

class Toddlers
	include Shout
end

class The_Elderly
	include Shout
end

toddler = Toddlers.new
puts toddler.loud_talking("I don't have to listen to you")

elderly = The_Elderly.new
puts elderly.confused_shouting("Why can't you speak up")
