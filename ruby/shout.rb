#module Shout
#  #Add method here
#")
#   def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#  def self.yelling_happily(words)
#    "Woo!! " + words + " :)"
#  end
#end#

#p Shout.yell_angrily("What the f$&%")
#p Shout.yelling_happily("Life is good

module Shout
  def yell(words)
    puts words + "!!!!!!"
  end
end

class Coach
  include Shout
end

class Teacher
  include Shout
end

coach = Coach.new
teacher = Teacher.new

coach.yell("Ten Suicides")
teacher.yell("Detention")