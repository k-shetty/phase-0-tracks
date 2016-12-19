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
		puts "Invalid input entered."
	end
end

# recommend_workout("triceps",db)

def add_exercise(db)
	puts "What exercise would you like to add?"
	exercise = gets.chomp
	puts "How many sets were completed"
	sets = gets.chomp.to_i
	puts "How many reps were in each set"
	reps = gets.chomp.to_i
	puts "What weight did you work with for this exercise?"
	weight = gets.chomp.to_i
	db.execute("INSERT INTO workout_progress (exercise, sets, reps, weight) VALUES (?, ?, ?, ?)", [exercise, sets, reps, weight])
	puts "You did the #{exercise} for #{sets} sets at #{reps} reps at a weight of #{weight} pounds."
end

# add_exercise(db)


