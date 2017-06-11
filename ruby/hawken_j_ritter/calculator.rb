#Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

#def calculator(num1, operator, num2)
#  if operator == '+'
#    puts num1 + num2
#  elsif operator == '-'
#    puts num1 - num2
#  elsif operator == '*'
#    puts num1 * num2
#  else
#    puts num1 / num2
#  end
#end
#calculator(10, '/', 5)

#Comment out your driver code and create a user interface for your program: Prompt the user for a calculation that the user would like to perform, and use your method to give the user a result. For instance, if the user types "4 + 5", the program should print a result of 9 and then exit. You can assume correct input on the user's part.
#def calc_method
#  puts "Give me a operation to peform:"
#  calculation = gets.chomp
#    #puts calculation
#    calc_array = calculation.split(" ")
#    index = 0
#    if calc_array[1] == '+'
#      puts calc_array[0].to_i + calc_array[2].to_i
#    elsif calc_array[1] == '-'
#      puts calc_array[0].to_i - calc_array[2].to_i
#    elsif calc_array[1] == '*'
#      puts calc_array[0].to_i * calc_array[2].to_i
#    else
#      puts calc_array[0].to_i / calc_array[2].to_i
#    end
#end
#calc_method

#Update your program to allow the user to do as many calculations as they want (so the user might enter 3 + 4, receive the answer, and then enter 7 - 1 as the next calculation, and so on). When the user types "done" instead of a calculation, the program can exit.

#def calc_method
#  while true
#  puts "Give me a operation to peform: or type 'exit'"
#  calculation = gets.chomp
#    calc_array = calculation.split(" ")
#    index = 0
#    if calc_array[1] == '+'
#      puts calc_array[0].to_i + calc_array[2].to_i
#    elsif calc_array[1] == '-'
#      puts calc_array[0].to_i - calc_array[2].to_i
#    elsif calc_array[1] == '*'
#      puts calc_array[0].to_i * calc_array[2].to_i
#    elsif calc_array[1] == '/'
#      puts calc_array[0].to_i / calc_array[2].to_i
#    else
#      break
#    end
#  end
#end
#calc_method

#When the user has finished performing calculations, but just before the program exits, print a count of the calculations performed, and a history of all the calculations that have been performed. The printout might look something like this:

def calc_method
  calculations_performed = []
    while true
    puts "Give me a operation to perform: or type 'exit'"
    calculation = gets.chomp
      calc_array = calculation.split(" ")
      index = 0
      if calc_array[1] == '+'
        answer_1 = calc_array[0].to_i + calc_array[2].to_i
        puts answer_1
        shovel_answer = "#{calculation} = #{answer_1}"
      elsif calc_array[1] == '-'
        answer_2 = calc_array[0].to_i - calc_array[2].to_i
        puts answer_2
        shovel_answer = "#{calculation} = #{answer_2}"
      elsif calc_array[1] == '*'
        answer_3 = calc_array[0].to_i * calc_array[2].to_i
        puts answer_3
        shovel_answer = "#{calculation} = #{answer_3}"
      elsif calc_array[1] == '/'
        answer_4 = calc_array[0].to_i / calc_array[2].to_i
        puts answer_4
        shovel_answer = "#{calculation} = #{answer_4}"
      elsif
        calculation == 'exit'
        break
      else
        puts "Your input was invalid, please re-enter operation:"
      end
      calculations_performed << shovel_answer
    end
    puts "Here are your calculations:"
    puts calculations_performed

end
calc_method
