#Created Santa class and added three instance methods
class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaapy Holidays!"
	end

	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie} cookie."
	end

end

#Driver code to test
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("chocolate chip")