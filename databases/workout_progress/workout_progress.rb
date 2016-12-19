require 'sqlite3'

db = SQLite3::Database.new("workout_log.db")
db.results_as_hash = true

recommended_exercises_tb = <<-SQL
	CREATE TABLE IF NOT EXISTS recommended_exercises (
	body_part VARCHAR(255),
	exercise VARCHAR(255),
	sets INT,
	reps INT,
	weight VARCHAR(255)
	)
	SQL

workout_progress_tb = <<-SQL
	CREATE TABLE IF NOT EXISTS workout_progress (
	id INTEGER PRIMARY KEY,
	exercise VARCHAR(255),
	sets INT,
	reps INT,
	weight INT
	)
	SQL

db.execute(recommended_exercises_tb)
db.execute(workout_progress_tb)

def recommend_workout(input,db)
	if input == "chest"
		chest = db.execute("SELECT recommended_exercises.exercise, recommended_exercises.sets, recommended_exercises.reps, recommended_exercises.weight FROM recommended_exercises WHERE recommended_exercises.body_part='chest'")
		i = 0
		while i < chest.length
			p "Exercise : #{chest[i]['exercise']}, Sets : #{chest[i]['sets']}, Reps : #{chest[i]['reps']}, Weight : #{chest[i]['weight']}"
			i += 1
		end
	elsif input == "back"
		back = db.execute("SELECT recommended_exercises.exercise, recommended_exercises.sets, recommended_exercises.reps, recommended_exercises.weight FROM recommended_exercises WHERE recommended_exercises.body_part='back'")
		i = 0
		while i < back.length
			p "Exercise : #{back[i]['exercise']}, Sets : #{back[i]['sets']}, Reps : #{back[i]['reps']}, Weight : #{back[i]['weight']}"
			i += 1
		end
	elsif input == "legs"
		legs = db.execute("SELECT recommended_exercises.exercise, recommended_exercises.sets, recommended_exercises.reps, recommended_exercises.weight FROM recommended_exercises WHERE recommended_exercises.body_part='legs'")
		i = 0
		while i < legs.length
			p "Exercise : #{legs[i]['exercise']}, Sets : #{legs[i]['sets']}, Reps : #{legs[i]['reps']}, Weight : #{legs[i]['weight']}"
			i += 1
		end
	elsif input == "biceps"
		biceps = db.execute("SELECT recommended_exercises.exercise, recommended_exercises.sets, recommended_exercises.reps, recommended_exercises.weight FROM recommended_exercises WHERE recommended_exercises.body_part='biceps'")
		i = 0
		while i < biceps.length
			p "Exercise : #{biceps[i]['exercise']}, Sets : #{biceps[i]['sets']}, Reps : #{biceps[i]['reps']}, Weight : #{biceps[i]['weight']}"
			i += 1
		end
	elsif input == "triceps"
		triceps = db.execute("SELECT recommended_exercises.exercise, recommended_exercises.sets, recommended_exercises.reps, recommended_exercises.weight FROM recommended_exercises WHERE recommended_exercises.body_part='triceps'")
		i = 0
		while i < triceps.length
			p "Exercise : #{triceps[i]['exercise']}, Sets : #{triceps[i]['sets']}, Reps : #{triceps[i]['reps']}, Weight : #{triceps[i]['weight']}"
			i += 1
		end
	elsif input == "shoulders"
		shoulders = db.execute("SELECT recommended_exercises.exercise, recommended_exercises.sets, recommended_exercises.reps, recommended_exercises.weight FROM recommended_exercises WHERE recommended_exercises.body_part='shoulders'")
		i = 0
		while i < shoulders.length
			p "Exercise : #{shoulders[i]['exercise']}, Sets : #{shoulders[i]['sets']}, Reps : #{shoulders[i]['reps']}, Weight : #{shoulders[i]['weight']}"
			i += 1
		end
	else
	end
end

def add_exercise(db)
	puts "What exercise would you like to add?"
	exercise = gets.chomp.capitalize
	puts "How many sets were completed"
	sets = gets.chomp.to_i
	puts "How many reps were in each set"
	reps = gets.chomp.to_i
	puts "What weight did you work with for this exercise?"
	weight = gets.chomp.to_i
	db.execute("INSERT INTO workout_progress (exercise, sets, reps, weight) VALUES (?, ?, ?, ?)", [exercise, sets, reps, weight])
	puts "You did the #{exercise} for #{sets} sets at #{reps} reps at a weight of #{weight} pounds."
end

def display_log(db)
	log = db.execute("SELECT * FROM workout_progress")
	i = 0
	while i < log.length
		p "ID : #{log[i]['id']} Exercise : #{log[i]['exercise']}, Sets : #{log[i]['sets']}, Reps : #{log[i]['reps']}, Weight : #{log[i]['weight']} pounds."
		i +=1
	end
end


def remove_exercise(db)
	puts "What entry would you like to remove? Refer to the ID of the entry for input."
	entry = gets.chomp.to_i
	db.execute("DELETE FROM workout_progress WHERE workout_progress.id=#{entry}")
end


#Driver Code
# add_exercise(db)
# add_exercise(db)
# display_log(db)
# remove_exercise(db)
# display_log(db)

puts "Welcome to this simple weight training program!"
puts "Would you like to see some recommended exercises? Select from chest, triceps, back, biceps, legs or shoulders. Enter no if you're not interested."
inp = ""
until inp == "no"
	inp = gets.chomp
	recommend_workout(inp,db)
end

puts "You can also store the exercises you complete. You can add exercises, remove exercises or display your current log of completed exercises. Enter add, remove, or display. Enter done when you are finished."
inp2 = gets.chomp.downcase

until inp2 == "done"
	if inp2 == "add"
		add_exercise(db)
	elsif inp2 == "remove"
		remove_exercise(db)
	elsif inp2 = "display"
		display_log(db)
	else
		puts "Invalid Input."
	end

	puts "Enter add, remove, or display. Enter done when you are finished."
	inp2 = gets.chomp.downcase
end

		
