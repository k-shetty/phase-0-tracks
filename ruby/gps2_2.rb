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

	loop do	

		a = create_list
		puts "What item would you like to add to the list?"
		input_key = gets.chomp
		puts "How many of this item do you want?"
		input_value = gets.chomp.to_i

		a[input_key] = input_value

		break if input_key == "done"

		p a
	end

end

add_item 




