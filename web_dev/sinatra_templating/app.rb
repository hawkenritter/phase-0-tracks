# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

get '/campus/new' do
  erb :campus
end

post '/campus' do
  if campuses = false
  db.execute(CREATE TABLE campuses (
    City varchar(255)
    );)
  else db.execute("INSERT INTO campuses (city) VALUES (?)", [params['city']])
  end
redirect '/'
end
