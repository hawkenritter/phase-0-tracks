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

50.times do |i|
i = Santa.new(@possible_genders.sample, @possible_ethnicities.sample, rand(140))
p i
end



