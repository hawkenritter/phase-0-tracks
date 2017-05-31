#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
#volume level from 1 to 10 (some people are light sleepers who won't adopt extra-squeaky hamsters)
#fur color
#whether the hamster is a good candidate for adoption
#estimated age

def hamster_organizer
  puts "What is the hamster\'s name?"
  hamster_name = gets.chomp
  puts "How loud is the hamster on a scale from 1 to 10?"
  volume = gets.to_i #test .chomp if doesn't work
  puts "What is the color of the fur?"
  fur_color = gets.chomp
  puts "Is the hamster a good candidate for adoption?(y,n)"
  adoption_status = gets.chomp
  puts "How old is the hamster?"
  estimated_age = gets.to_i
  if estimated_age == ""
    puts estimated_age = nil
  end
end

