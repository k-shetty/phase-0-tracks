#creating algorithm
#get user input
# split between first name and last name
#iterate through each name
#identify consonants and vowels
#	-consonants move to next consonant
#	-vowels move to next vowel
#Join final result
#Save results
name = "Karan Shetty".downcase.split(' ')

$first_name = name.first.split('')
$last_name = name.last.split('')


$vowels = ("aeiou".split(''))
$consonants = ("bcdfghjklmnpqrstvwxyz".split(''))
# new_first_name = []
# new_last_name = []

# p $first_name
# p $last_name

def next_character(character)
	if $vowels.include?(character)
		p $vowels[($vowels.index(character) + 1)]
	else
		p $consonants[($consonants.index(character) + 1)]
	end
end

def alias_maker(name)
	new_first_name = []
	new_last_name = []
	
	$first_name.map do |character|
		character = next_character(character)
		new_first_name << character
	end	

	$last_name.map do |character|
		character = next_character(character)
		new_last_name << character
	end
	p new_last_name
	p new_first_name
end

p alias_maker ("Karan Shetty")

# p new_first_name
# p new_last_name
# def alias_creation(name)
# 	$first_name.map! {|l|
# 		p l
# 		l = next_character(l)
# 	}
# 	# $last_name.map! {|l|
# 	# 	l = next_character(l)
# 	# }

	
# end

# p alias_creation ("Karan Shetty")

# puts next_character("b")
