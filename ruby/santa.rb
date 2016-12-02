#Created Santa class and added three instance methods
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@age = 0
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
	end

	def speak
		puts "Ho, ho, ho! Haaaapy Holidays!"
	end

	def eat_milk_and_cookies(type_of_cookie)
		puts "That was a good #{type_of_cookie} cookie."
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reinder_name)
		@reindeer_ranking.delete(reinder_name)
		@reindeer_ranking << reinder_name
	end
#Getter Methods
#commented out getter methods due to attr_reader
	# def age
	# 	@age
	# end 

	# def ethnicity
	# 	@ethnicity
	# end
	
#Setter Method
#commented out setter method due to attr_accessor
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end


end

#Driver code to test
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

sample_santa = Santa.new("male", "asian")
sample_santa.gender = "something"

p sample_santa
p sample_santa.age
p sample_santa.celebrate_birthday
p sample_santa.ethnicity
p sample_santa.age


# p santas





