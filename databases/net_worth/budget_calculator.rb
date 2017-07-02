#require sql gem
require 'sqlite3'

#create sql database to store budget info
db = SQLite3::Database.new("monthly_expenses.db")

#create a table to store data
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS monthly_expenses(
    id INTEGER PRIMARY KEY,
    expense_date DATE,
    expense_name VARCHAR(255),
    expense_amount FLOAT(8)
  )
SQL


#Insert Table( DateTimeCol )
#Values( CURRENT_TIMESTAMP )

# create a monthly expenses table (if it's not there already)
db.execute(create_table_cmd)

# add a test expense
#db.execute("INSERT INTO monthly_expenses (expense_date, expense_name, expense_amount) VALUES ('2017-08-05', 'Purchased a car', 20000.00)")

#create method that asks user for variety of input regarding monthly finances

#Ask user for their monthly income
def budget_calc
  puts "What is your monthly income?"
  m_income = gets.to_f
  puts "What are your monthly fixed costs, i.e. rent, gas, electricity, wifi, phone bill, etc.?"
  fixed_costs = gets.to_f
  puts "How much would you like to save this month?"
  savings_goal = gets.to_f

  discretionary_income = m_income - fixed_costs - savings_goal
  puts "Based on your monthly inputs, we calculate that you have #{discretionary_income} to spend on food and other discretionary items"
end

#method for adding an expense to the table
def new_expense(db)
  puts "Please enter date of transaction; XXXX-XX-XX (Year, Month, Day)"
  date = gets.chomp
  puts "Please label your transaction for later reference"
  e_name = gets.chomp
  puts "How much are you withdrawing"
  amount = gets.chomp

  db.execute("INSERT INTO monthly_expenses(expense_date, expense_name, expense_amount) VALUES ('#{date}','#{e_name}','#{amount}')")#, [expense_date, expense_name, expense_amount])
end

#new_expense(db)

  puts "Would you like to make a withdrawal or deposit?"
    if gets.chomp == "withdrawal"
      new_expense(db)
    elsif gets.chomp == "deposit"
      new_deposit
    else
      puts "Thank you"
    end


