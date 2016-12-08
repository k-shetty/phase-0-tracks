# Virus Predictor

# I worked on this challenge with: Stephen Smith.
# We spent ~2 hours on this challenge.

# EXPLANATION OF require_relative
#Require means you have to load the path of the file before listing the file name. Relative_require automatically searches in the current directory for the file
#you would like to bring in.

require_relative 'state_data'

class VirusPredictor

#initializes an instance of the class when .new is called on the class. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Runs speed of spread and predicted deaths methods when called. 
  def virus_effects
    num = predicted_deaths
    sos = speed_of_spread
    puts "#{@state} will lose #{num} people in this outbreak and will spread across the state in #{sos} months.\n\n"
  end

  private

  def predicted_deaths
    number_of_deaths =
    if @population_density >= 200
      (@population * 0.4)
    elsif @population_density >= 150
      (@population * 0.3)
    elsif @population_density >= 100
      (@population * 0.2)
    elsif @population_density >= 50
      (@population * 0.1)
    else
      (@population * 0.05)
    end
    .floor
  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |variable, value|
  VirusPredictor.new(variable, value[:population_density], value[:population]).virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

## What are the differences between the two different hash syntaxes shown in the state_data file?
# The state data hash has hashes for values. Also, the variable is a constant variable, since it's in all caps.

# # What does require_relative do? How is it different from require?

# Require relative looks for the file name realtive to where you currently are (Current directory). Require requires the
# programmer to specify the path of the file (using $LOAD_PATH) before being able to 'require' it.

# # What are some ways to iterate through a hash?

# You could use .each to iterate through a hash. Other than that, you might be able to iterate through a hash by setting up
# a loop to run through each key of a hash, but I would default to using .each.

# # When refactoring virus_effects, what stood out to you about the variables, if anything?

# After looking at the how the methods #predicted_deaths and #speed_of_spread operated, my partner and I noticed that 
# instance variables were being used, and that no arguments needed to be passed through those methods to return a value.
# Removing those parameters in #virus_effects did not affect the fucntion of the program. 

# # What concept did you most solidify in this challenge?

# For me personally, this challenge helped me refine my ability to refactor. I also got more comfortable with using classes
# and knowing how to call methods on new instances of a class. 

