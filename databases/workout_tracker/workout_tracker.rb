require 'sqlite3'

workout_tracker = SQLite3::Database.new("workout_tracker.db")
workout_tracker.results_as_hash = true

five_by_five = <<-SQL
	CREATE TABLE IF NOT EXISTS starter_strength (
		id INTEGER PRIMARY KEY,
		lift VARCHAR(255),
		sets INT,
		reps INT,
		weight INT
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

