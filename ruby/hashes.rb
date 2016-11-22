#Allow user to enter information


#Client's name, client's age, number of children, decor theme, etc.


#Assign input to correct data types
#Print information back to user
#Allow user to make changes 
#Update changes
#Print latest version of hash

form_info = Hash.new

puts "what is the client's name?"
form_info [:name] = gets.chomp

puts "what is the client's age?"
form_info [:age] = gets.chomp.to_i

puts "how many children does the client have?"
form_info [:children] = gets.chomp.to_i

puts "what theme would you like your redesign to follow?"
form_info [:theme] =gets.chomp

puts form_info

puts "would you like to make any changes? (type none if no changes need to be made)"
input = gets.chomp.to_sym

if input == "none"
	puts form_info
	elsif input == :name
		puts "enter new name"
		form_info [:name] = gets.chomp
	elsif input == :age
		puts "enter correct age"
		form_info [:age] = gets.chomp
	elsif input == :children
		puts "enter the correct number of children"
		form_info [:children] = gets.chomp
	else input == :theme
		puts "enter the correct theme the client wants"
		form_info [:theme] =gets.chomp

end

puts form_info