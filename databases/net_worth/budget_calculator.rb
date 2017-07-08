require 'sqlite3'

db = SQLite3::Database.new("monthly_expenses.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS monthly_expenses(
    id INTEGER PRIMARY KEY,
    expense_date DATE,
    expense_name VARCHAR(255),
    expense_amount FLOAT(8)
  )
SQL

db.execute(create_table_cmd)



def new_expense(db)
  puts "Please enter date of transaction; XXXX-XX-XX (Year, Month, Day)"
  date = gets.chomp
  puts "Please label your transaction for later reference"
  e_name = gets.chomp
  puts "How much are you withdrawing"
  amount = gets.to_f * -1
    db.execute("INSERT INTO monthly_expenses(expense_date, expense_name, expense_amount) VALUES ('#{date}','#{e_name}','#{amount}')")
        anything_else(db)
end

def new_deposit(db)
  puts "Please enter date of transaction; XXXX-XX-XX (Year, Month, Day)"
  date = gets.chomp
  puts "Please label your transaction for later reference"
  e_name = gets.chomp
  puts "How much are you depositing?"
  deposit_amount = gets.to_f
    db.execute("INSERT INTO monthly_expenses(expense_date, expense_name, expense_amount) VALUES ('#{date}','#{e_name}','#{deposit_amount}')")
        retrieve_balance(db)
end

def retrieve_balance(db)
  account_balance = db.execute("SELECT SUM(expense_amount) FROM monthly_expenses")
    puts "You currently have a balance of $" + account_balance.join("")
      anything_else(db)
end

def update_item(db)
  db.execute("SELECT * FROM monthly_expenses")
  puts "What is the date of the transaction you would like to update?"
  transaction_date = gets.chomp
  puts "What is the label attached to this transaction?"
  transaction_label = gets.chomp
  puts "Please enter the new amount"
  transaction_amnt = gets.to_f
    db.execute("UPDATE monthly_expenses SET expense_amount = #{transaction_amnt} WHERE expense_date = #{transaction_date}")
          anything_else(db)
end

def budget_calc(db)
  puts "How much would you like to save this month?"
  savings_goal = gets.to_f
  account_balance = db.execute("SELECT SUM(expense_amount) FROM monthly_expenses")
  string_balance = account_balance.join("").to_f
  discretionary_income = string_balance - savings_goal
      puts "Based on your savings goal, we calculate that you have #{discretionary_income} to spend on food and other discretionary items for the remainder of the month"
  anything_else(db)
end

def anything_else(db)
    puts "Is there anything else you need?"
      input = gets.chomp
    if input == "yes"
      budget_start(db)
    else
      puts "Thank you"
    end
end

def other_method(db)
  puts "Would you like to update a previous transaction? View current account balance? Or view your savings plan?"
  user_input = gets.chomp
    if user_input == "update"
      update_item(db)
    elsif user_input == "account balance"
      retrieve_balance(db)
    elsif user_input == "view savings"
      budget_calc(db)
    else
      puts "Thank you"
    end
end

def budget_start(db)
  puts "Would you like to make a deposit, withdrawal, or other?"
   user_input = gets.chomp
    if user_input == "withdrawal"
      new_expense(db)
    elsif user_input == "deposit"
      new_deposit(db)
    elsif user_input == "other"
      other_method(db)
    end
end

budget_start(db)





