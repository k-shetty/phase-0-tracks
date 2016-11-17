puts "What is the hamster's name?"
h_name=gets.chomp

puts "How loud is it? (1-10)"
h_volume=gets.chomp
h_volume.to_i
puts "What color is it?"
h_color=gets.chomp

puts "Is it a good candidate for adoption? (ready, not ready)"
h_adoption=gets.chomp
if h_adoption=="ready"
	h_adoption=true
elsif h_adoption=="not ready"
	h_adoption=false
end

puts "How old do you think it is (in years)?"
h_age=gets.chomp
if h_age.empty? ==true
 	h_age=nil
else h_age.to_i
end 

puts "The hamster's name is #{h_name}, it is #{h_color} and on a scale of 1-10 of loudness, it is a #{h_volume}.
Did the donor say the hamster is ready for adoption:  #{h_adoption}
It is probably #{h_age} years old.