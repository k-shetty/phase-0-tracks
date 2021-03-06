# require gems
require 'sinatra'
require "sinatra/reloader"
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#Release 0

get '/contact' do
	"Address: 123 Fake Street Springfield, Illinois 12345"
end

get '/great_job' do
	name = params[:name]
	if name
		"Good job, #{name}!"
	else
		"Good job!"
	end
end

get '/:number_1/plus/:number_2' do
	num1 = params[:number_1]
	num2 = params[:number_2]
	result = num1.to_i + num2.to_i
	"#{num1} plus #{num2} is equal to #{result}."
end

# Release 1

#1. Sinatra is not the only web application designed using Ruby. Others web frameworks include Ruby on Rails,
# Cuba, Pakyow and Volt.

# 2. Other databases can be used in Sinatra, such as Mongo, PostgreSQL, and ActiveRecord.

# 3. A "web stack" refers to all the technologies needed to create a working website. This includes the operating system, programming language, database, and server.
