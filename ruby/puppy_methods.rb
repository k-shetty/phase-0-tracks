class Puppy

	def initialize()
		puts "Initializing new puppy instance ..."
	end

	def fetch(toy)
	  puts "I brought back the #{toy}!"
	  toy
	end

	def speak(int)
		int.times do 
			puts "Woof"
		end
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(num_human_years)
		dog_years = num_human_years * 7
	end

	def tug_of_war(human_name)
		if human_name.length % 2 == 0
			puts "You lose!"
		else  
			puts "You win!"
		end
	end

end

# Driver Code
fido = Puppy.new()
fido.fetch("ball")
fido.speak(3)
fido.roll_over
puts fido.dog_years(5)
fido.tug_of_war("Karan")

class Climber

	def initialize()
		puts "You're an awesome climber."
	end

	# Takes in strength value between 0-10, takes courage between 0-5 and analyzes climber's dyno
	def dyno(strength, courage)
		if strength * courage > 25
			puts "You stuck the dyno!"
		else 
			puts "Try again, maybe next time!"
		end
	end

	# Takes in boolean for climber's technique and analyzes if they flag. 
	def flagging(technique)
		if technique == true
			puts "You reached the next hold"
		else
			puts "You were unable to reach the next hold and fell off."
		end
	end

end

# Driver code methods 

def climbing_club
	num_climbers = 50
	club = []
	num_climbers.times do 
		club << Climber.new
	end
	club
end

def climbing_activities(club_of_climbers)
	club_of_climbers.each do |climber|
		puts climber
		climber.dyno(rand(11), rand(6))
		climber.flagging([true, false].sample)
		puts ""
	end
end

club = climbing_club
climbing_activities(club)







