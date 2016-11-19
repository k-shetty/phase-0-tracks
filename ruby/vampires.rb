#Coding program to gather informmation from user

puts "What is your name?"
e_name = gets.chomp.downcase

puts "How old are you?"
e_age = gets.chomp.to_i

puts "What year were you born"
e_birthyear = gets.chomp.to_i

puts "Would you like us to order you some complimentary garlic bread from our cafeteria?"
e_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
e_insurance = gets.chomp

if (e_age == (2016-e_birthyear)) && ((e_bread == "yes") && (e_insurance == "yes") && (e_name == "drake cula") || (e_name == "tu fang"))
	puts "Definitely a Vampire."
elsif (e_age != (2016- e_birthyear)) && (e_bread == "no") && (e_insurance == "no")
puts "Almost certainly a vampire."
elsif (e_age != (2016- e_birthyear)) && ((e_bread == "no") || (e_insurance == "no"))
puts "Probably a vampire."
elsif (e_age == (2016-e_birthyear)) && ((e_bread == "yes") || (e_insurance == "yes"))
puts "Probably not a vampire."
else
	puts "Results inconclusive."
end

		






=begin
	
If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

(e_age == (2016-e_birthyear)) && ((e_bread == "yes") || (e_insurance == "yes"))
puts "Probably not a vampire."

If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

(e_age != (2016- e_birthyear)) && ((e_bread == "no") || (e_insurance == "no"))
puts "Probably a vampire."

If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

(e_age != (2016- e_birthyear)) && (e_bread == "no") && (e_insurance == "no")
puts "Almost certainly a vampire."

Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”

(e_age == (2016-e_birthyear)) && ((e_bread == "yes") && (e_insurance == "yes") && (e_name == "drake cula") || (e_name == "tu fang"))
puts "Definitely a Vampire."

else 
	puts "Results inconclusive."
	
=end
