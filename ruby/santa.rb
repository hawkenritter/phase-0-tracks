class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  def celebrate_birthday
   new_age = @age + 1
   @age = new_age
   #@ethnicity = "Japanese" Test the ethnicity getter variable
  end

  #HOW tf do you do this keep getting type error string to integer!!!
  def get_mad_at(raindeer_name)
    index_position = @reindeer_ranking[raindeer_name]
    p index_position
    @reindeer_ranking.delete_at(index_position)
    @reindeer_ranking.insert(-1, "#{raindeer_name}")
  end

  #setter method
  #def gender=(updated_gender)
  #   @gender = updated_gender
  #end

      #def get_mad_at(reindeer_name)
      #  reindeer_ranking.insert((reindeer_name)
      #  @reindeer_ranking
      #end

  #Getter methods
    #def age
    #    @age
    #end

    #def ethnicity
    #    @ethnicity
    #end
end

    #santas = []
    #example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    #example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    #example_genders.length.times do |i|
    #  santas << Santa.new(example_genders[i], example_ethnicities[i])
    #end
    # p santas

santas = []
santa_1 = Santa.new("male","black")
santas << santa_1
#p santas
santa_1.gender = "female"
#santa_1.get_mad_at("Vixen")
santa_1.celebrate_birthday
puts "Santa had a birthday and is now #{santa_1.age}"
puts "Santa is #{santa_1.ethnicity}"
p santas


