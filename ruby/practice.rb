def hamster
  puts "What is the hamsters name"
  hamster_name = gets.chomp!
  puts "How loud is the hamster on a scale of 1 to 10"
  volume = gets.chomp!
  puts " What is the color of the fur"
  fur_color = gets.chomp!
  puts "#{hamster_name} " + "is the name of the hamster"
  puts "The hamster is a " + "#{volume} " + "on the scale of 1 to 10"
  puts "The hamster is " + "#{fur_color}"
end
puts hamster
