require 'sqlite3'

workout_tracker = SQLite3::Database.new("workout_tracker.db")
workout_tracker.results_as_hash = true

five_by_five = <<-SQL
	CREATE TABLE IF NOT EXISTS starter_strength (
		id INTEGER PRIMARY KEY,
		lift VARCHAR(255),
		sets INT,
		reps INT,
		weight VARCHAR(255)
	)
	SQL

workout_tracker.execute(five_by_five)

five_by_five_personal = <<-SQL
	CREATE TABLE IF NOT EXISTS personal_progress (
		id INTEGER PRIMARY KEY,
		lift VARCHAR(255),
		sets INT,
		reps INT,
		weight INT
	)
	SQL

workout_tracker.execute(five_by_five_personal)

def display_options
	puts "Here's what you can do"
	puts "Info - See the general layout for the starter strength program."
	puts "Add - Start adding your lifts, reps, sets, and weight to start tracking your progress."
	puts "Remove - Remove any incorrectly enetered data."
	puts "Progress - Lists the current exercises you have enetered/logged."
	puts "Exit - Quit the program."
end

def display_info(database)
	info = database.execute("SELECT * FROM starter_strength")
	puts "#{info[1]}. #{info[2]} at #{info[3]} sets of #{info[4]} reps at #{info[5]}."
end

def add_info(database)
	puts "What lift would you like to add?"
	lift = gets.chomp
	puts "How many sets were completed"
	sets = gets.chomp.to_i
	puts "How many reps were in each set"
	reps = gets.chomp.to_i
	puts "What weight did you work with for this lift?"
	weight = gets.chomp.to_i
	database.execute("INSERT INTO personal_progress (lift, sets, reps, weight) VALUES (?, ?, ?, ?)", [lift, sets, reps, weight])
	puts "You have added #{lift} for #{sets} sets for #{reps} reps at #{weight} lbs."
end

def remove_info(database)
	puts "What is the entry you would like to remove. Enter the numerical id before the lift."
	entry = gets.chomp.to_i
	delete = "DELETE from personal_progress WHERE id=#{entry}"
	database.execute(delete)
end

def display_progress(database)
	progress = database.execute("SELECT * FROM personal_progress")
	progress.each do |lift|
		puts "#{lift['id']} | #{lift['lift']} at #{lift['sets']} sets of #{lift['reps']} reps at #{lift['weight']} lbs.}"
	end
end

puts "Welcome to the Workout Tracker"
display_options
puts "Select an option"

input = gets.chomp.downcase
	until input == "exit"
		if input == "info"
			display_info(workout_tracker)
		elsif input == "add"
			add_info(workout_tracker)
		elsif input == "remove"
			remove_info(workout_tracker)
		elsif input == "progress"
			display_progress(workout_tracker)
		else
			puts "Valid input not entered. Try again."
		end

	puts "What would you like to do?"
	input = gets.chomp

	end
