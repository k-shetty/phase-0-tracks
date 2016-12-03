#pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: Create new hash (initialize empty hash)
# 
# set default quantity (equal to 0 at the beginning)
# print the list to the console [can you use one of your other methods here?](print list using final method to print list)
# output: [what data type goes here, array or hash?] (output expected to be a hash)

# Method to add an item to a list
# input: item name and optional quantity
# steps:promting user for input
#first ask user for item
#assign that to key value
#(optional)then ask user for quantity of item
#allow user to enter mutliple items
# output: hash

# Method to remove an item from the list
# input: Promt user to remove an item from the list
# steps: obtain input from user
#check input with existing key values
#delete key IF user input matches key
# output: hash

# Method to update the quantity of an item
# input: Prompt user for input "would you like to update the quantity of any items" (IF "none" entered, cancel out or break)
# steps:Check user input against exisiting hash keys
#prompt user to rassign value to quantity after checking against existing hash. 
# output: hash

# Method to print a list and make it look pretty
# input: no additonal input from user is needed
# steps: iterate through hash, print out statement for each item
# output: hash

def create_list()
	grocery_list = {}
end

def add_item ()
a = create_list
	loop do	

		puts "What item would you like to add to the list? Type 'done' when finished."
		input_key = gets.chomp.capitalize
		break if input_key == "Done" 
		puts "How many of this item do you want?"
		input_value = gets.chomp.to_i

		a[input_key] = input_value
		
	end
	p a
end

def remove_item (list)
	loop do
		puts "Would you like to remove any items from your list? Type 'done' when finished"
		input = gets.chomp.capitalize

		if input == "Done"
			break
		elsif 
			list.include?(input)
			list.delete(input)
		else 
			puts "Incorrect input"
		end
	end
	p list
end


def quantity_update(list)
	loop do
		puts "Would you like to update the quantity of any items from your list? Type 'done' when finished"
		update_item = gets.chomp.capitalize
		break if update_item == "Done"
		puts "How many of this item do you want?"
		new_quantity = gets.chomp.to_i

			if 
				list.include?(update_item)
				list[update_item] = new_quantity
			else 
				puts "Incorrect input"
			end
	end
p list
end

def print_list(list)

	puts ""
	puts "GROCERY LIST".rjust(17)
	puts "======================="
	puts ""
	
	list.each do |key,value|
		printf "%-20s %s\n\n",key, value
	end
end

print_list(quantity_update(remove_item(add_item)))

=begin
REFLECT

* After working on this challenge, the importance of having thought out pseduocode really plays a big role in how effectively you can
work thorugh the challenge. This is even moreso with paired sessions, since it forces both people to talk through how they want to work
through the problem. It avoids confusion and allows you to bounce ideas back and forth with your partner.

* Using arrays for this challenge would have been a little difficult to read if my partner and I had gone that route. When we saw the requirement
of the program was to have and item and quantity, hashes made the most sense, since we were working with two values associated with each other 
rather than just listing the items out in an array. 

* A method returns the last evaluated expression in that method unless a value is explicitly returned ealrier in the method.

* Methods can take a a lot as arguments, depending on the funtion of the method. It can ba a number, string, block of code, as long as the method 
can be used on that argument.

* A method can take input from other methods as long as the output of one method is an acceptable input for another method. 

*My understanding of passing information from one method to the next was strengthened in this challenge, moreso than last week. It's still an area
in which I'm still trying to improve my understaanding of. 
	
end







