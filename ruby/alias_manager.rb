#creating algorithm
#get user input
# split between first name and last name
#iterate through each name
#identify consonants and vowels
#	-consonants move to next consonant
#	-vowels move to next vowel
#Join final result
#Save results

# "What is your name?"
# name = gets.chomp.downcase.split(' ')

# $first_name = name.first.split('')
# $last_name = name.last.split('')


$vowels = ("aeiou".split(''))
$consonants = ("bcdfghjklmnpqrstvwxyz".split(''))
# new_first_name = []
# new_last_name = []

# p $first_name
# p $last_name

def next_character(character)
	if $vowels.include?(character)
		$vowels[($vowels.index(character) + 1)]
	else
		$consonants[($consonants.index(character) + 1)]
	end
end



def alias_first(name1)
	new_first_name = []
	first_name = $input[0].split('')
	first_name.map do |character|
		character = next_character(character)
		new_first_name << character
	end	
	new_first_name.join.capitalize
end

def alias_last(name2)
	new_last_name = []
		last_name = $input[1].split('')
		last_name.map do |character|
		character = next_character(character)
		new_last_name << character
	end
	 new_last_name.join.capitalize
end

# def alias_maker(input)
# 	$input.downcase.split(' ')
# 		 $first_name = $input.(0).split('')
# 		 $last_name = $input.(1).split('')
# 	puts "Your alias is #{alias_last(last_name)} #{alias_first(first_name)}"
# end


# p alias_first($first_name)
# p alias_last($last_name)

# interface
alias_storage = {}
loop do
	puts "What is your name? (type 'quit' when done entering names)"
	$input = gets.chomp.split(' ')

		 if $input[0] == "quit"
			break
		else 
			puts "Your alias is #{alias_last($input[1])} #{alias_first($input[0])}."
			alias_storage[$input.join(' ')] = ("#{alias_last($input[1])}  #{alias_first($input[0])}")
		end
end

alias_storage.each do |key, value|
	puts "#{value} is the alias for #{key}."
end
# name = gets.chomp.downcase.split(' ')
# 		 $first_name = name.first.split('')
# 		 $last_name = name.last.split('')
# 		 alias_storage = {}