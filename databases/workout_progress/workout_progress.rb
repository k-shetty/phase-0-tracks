require 'sqlite3'

db = SQLite3::Database.new("workout_log.db")

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

