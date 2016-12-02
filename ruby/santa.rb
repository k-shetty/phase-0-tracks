#Created Santa class and added three instance methods
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		#puts "Initializing Santa instance..."
		@gender = gender
		@age = rand(141)
		@ethnicity = ethnicity
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

	def get_mad_at(reindeer_name)
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

	def about
		@age
	end

#Getter Methods
#removed getter methods due to attr_reader
	
#Setter Method
#removed setter method due to attr_accessor
end

#Driver code to test
# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# sample_santa = Santa.new("male", "asian")
# sample_santa.gender = "something"

# p sample_santa
# p sample_santa.age
# p sample_santa.celebrate_birthday
# p sample_santa.ethnicity
# p sample_santa.age
# p sample_santa.get_mad_at("Prancer")
# p sample_santa

def santa_party(number_of_santas)
	guest_list =[]
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	
	number_of_santas.times do
		gender = example_genders.sample
		ethnicity = example_ethnicities.sample
		guest_list << Santa.new(gender, ethnicity)
	end 

	guest_list.each do |guest|
		puts "This santa is #{guest.age} years old, identifies as #{guest.gender} and comes from a #{guest.ethnicity} background."
	end
end

santa_party(20)