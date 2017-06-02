#What is your name
#How old are you, what year were you born
#Our company cafeteria serves garlic bread. should we order some for you?
#Would you like to enroll in the company's health insurance?

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”

#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”

#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”

#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”

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

  if age_check != stated_age && insurance == "n" && garlic_bread == "n"
     puts "Probably a vampire"
  elsif age_check == stated_age && (garlic_bread == "y"|| insurance == "y")
     puts "Probably not a vampire"
  elsif age_check != stated_age && (insurance == "n" && garlic_bread == "n")
    puts "Almost certainly a vampire"
  elsif hire_name == "Drake Cula" || hire_name == "Tu Fang"
    puts "“Definitely a vampire"
  else
    puts "Results inconclusive"
  end

  puts "According to our math, he is " + age_check.to_s + " years old"
  puts "His name is " + "#{hire_name}"
  puts "He says he is " + "#{stated_age}"
  puts "And he says he was born in " + "#{birth_year}"
end

 # if age_check != stated_age && insurance == "n" && garlic_bread == "n"
 #    puts "Uh oh, we have a problem. He is probably a vampire"
 # else
 #    puts nil
 # end
 # puts "According to our math, he is " + age_check.to_s + " years old"
 # puts "His name is " + "#{hire_name}"
 # puts "He says he is " + "#{stated_age}"
 # puts "And he says he was born in " + "#{birth_year}"
 # end


