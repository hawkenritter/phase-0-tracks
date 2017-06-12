#class Puppy#

#  def fetch(toy)
#    puts "I brought back the #{toy}!"
#    toy
#  end#

#  def rollover
#    puts "*rollover*"
#  end#

#  def speak(integer)
#    puts "Woof! " * integer
#  end
#  def dog_years(human_years)
#    dog_age = 7 * human_years
#    puts "is " + dog_age.to_s + " years old"
#  end
#  def shake
#    puts "*reaches paw out to shake*"
#  end
#  def initialize
#    puts "initialize new puppy instance..."
#  end
#end
#fluffy = Puppy.new
#fluffy.fetch("beer")
#fluffy.rollover
#fluffy.speak(5)
#fluffy.dog_years(5)
#fluffy.shake

class Hooper
  def initialize #name
    #@name = name
    #puts "Go #{@name}!"
  end
  def shoot
    puts "Shoot the ball!"
  end
  def pass
    puts "Pass to the open man!"
  end

end
player_array = []
50.times do
  player = Hooper.new
  player_array << player
end
p player_array

player_array.each do |i|
  i.shoot
  i.pass
end


