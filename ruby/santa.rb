class Santa
  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @age = age
  end

  def about
    puts "This santa is #{@gender}, #{@ethnicity} and is #{@age} years old"
  end
end

@possible_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
@possible_ethnicities =  ["white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

5.times do |i|
i = Santa.new(@possible_genders.sample, @possible_ethnicities.sample, rand(140))
p i
end

#Ask questions in office hours about get_mad_at method... convert string to integer error

#class Santa
#  attr_reader :age, :ethnicity, :reindeer_ranking
#  attr_accessor :gender
#  def initialize(gender, ethnicity)
#    @gender = gender
#    @ethnicity = ethnicity
#    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#    @age = rand(0..140)
#    puts "Initializing Santa instance..."
#  end#

#  def speak
#    puts "Ho, ho, ho! Haaaapy holidays!"
#  end#

#  def eat_milk_and_cookies(cookie_type)
#    puts "That was a good #{cookie_type}"
#  end#

#  def celebrate_birthday
#   new_age = @age + 1
#   @age = new_age
#   #@ethnicity = "Japanese" Test the ethnicity getter variable
#  end#

#  #HOW tf do you do this keep getting type error string to integer!!!
#      #  def get_mad_at(raindeer_name)
#      #    index_position = @reindeer_ranking[raindeer_name]
#      #    p index_position
#      #    @reindeer_ranking.delete_at(index_position)
#      #    @reindeer_ranking.insert(-1, "#{raindeer_name}")
#      #  end
#end









