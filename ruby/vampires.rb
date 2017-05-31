#What is your name
#How old are you, what year were you born
#Our company cafeteria serves garlic bread. should we order some for you?
#Would you like to enroll in the company's health insurance?

def vampire_test
  puts "What is your name?"
  hire_name = gets.chomp
  puts "How old are you?"
  stated_age = gets.to_i
  puts "What year were you born?"
  birth_year = gets.to_i
  puts "Would you like garlic bread?(y,n)"
  garlic_bread = gets.chomp
  puts "Do you want to enroll in health insurance?(y,n)"
  insurance = gets.chomp

  current_year = Time.new.year #the year right now
  age_check = current_year - birth_year
  if age_check != stated_age
    puts "We have a problem"
  else
    puts nil
  end
end

