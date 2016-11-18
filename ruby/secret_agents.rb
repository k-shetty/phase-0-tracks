# METHODS

#Encrypt
#Go through string. Find a way to move each letter one ahead.
#Iterate through the string
#Use method to change letter


	
def encrypt(password)
	index = 0
	while index < password.length
		if password[index] == "z"
			password[index] = "a"
		else
			password[index] = password[index].next!
		end
	index += 1
	end
#puts password
end

#Decrypt
#Go through string. Find way to go back one letter for each character in the string. 
#Iterate through the string
#Get letter of current index
#Get the index value of alphabet for letter for current index
#Get the index vaule for letter before. 
#Get the letter in alphabet that correponds to new index value

ALPHABET = "abcdefghijklmnopqrstuvwxyz"

def decrypt(password)
	index = 0
	while index < password.length
		password[index] = ALPHABET[ALPHABET.index(password[index])-1]
		index += 1
	end
#puts password
end

#encrypt("abc") #should return "bcd"
#encrypt("zed") #hould return "afe"
#decrypt("bcd") #should return "abc"
#decrypt("afe") #should return "zed"

#encrypt("swordfish")
#decrypt("swordfish")

#decrypt(encrypt("swordfish"))

#Theoretically, using a method as an argument for another method should work, as long as the return value of the
#nested method is vaild as a input for the parent method. In our case, the individual methods funtioned as expected
#but we ran into a NoMethodError (lines 8 and 31 ). We believe this happened as a result of the reutrn value for our 
#nested method not being accepted as an apprpriate value for the parent method.

#DRIVER CODE
#Prompt user whether or not to encrypt or decrypt 
puts "Do you want to encrypt or decrypt you password?"
answer = gets.chomp.downcase
#Prompt user for password to encrypt or decrypt

valid_response = false

until valid_response
	if answer == "encrypt"
		puts "What password do you want to encrypt?"
		password = gets.chomp
		puts encrypt(password)
		valid_response = true

	elsif answer == "decrypt"
		puts "What password do you want to decrypt?"
		password = gets.chomp
		puts decrypt(password)
		valid_response = true

	else
		puts "Inavlid response. Encrypt or decrypt?"
		answer = gets.chomp.downcase
		valid_response = false
	end
end

p "Thank you using our crypto prgram. Your new password is #{password}. Exiting now"
		

#Run correct method, print new password to screen, and then close program.
