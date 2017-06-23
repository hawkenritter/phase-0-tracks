# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  #initialize an instance of the class virus predictor, i.e. for each state
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #come back to...
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #takes three arguments... conditional loop predicting deaths based on variables of density and population from each state.. predicts death count... prints result
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #takes two arguments, speed is adjusted based on population density, prints result.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================
#Alaska will lose 36572 people in this outbreak and will spread across the state in 2.5 months.

# DRIVER CODE
 # initialize VirusPredictor for each state

# iterate through the states,

STATE_DATA.each do |state_origin, population_data|
  state_origin = VirusPredictor.new(state_origin, population_data[:population_density],population_data[:population])
  #p state_origin
  #p population_data
  state_origin.virus_effects
end


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects#

##jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
##jersey.virus_effects##

##california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
##california.virus_effects##

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section

#there are hash rockets and hash symbols. Hash rockets are used like this: "Key name" => "Value", and hash symbols are used like this: key_name: "Value"... hash symbols are more common for engineers just because they are easier to type, but if you plan on printing your keys it makes more sense to use hash rockets because they print strings vs symbols.

#require_relative links files, giving one file access to the data in another in the relative directory.

#There are multiple ways to iterate through a hash such as using the multiple argument approach in a do loop.

#What stood out about virus_effects was the fact that we were passing the arguments of our instance variables even though they were available to the entire class. Thus we could delete these arguments and just call them within the method because they were available as instance variables.

#I think I solidified my understanding of the scope of instance variables and how they work inside of a class. I was unnecessarily using attr:reader/writer because I thought I needed to in order for instance methods to access the variables...