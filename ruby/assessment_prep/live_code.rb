### RELEASE 1 ###
#Create a class for a Newsroom.
#All Newsroom instances should have a name and a budget passed in on creation. For instance, our name could be "CNN" and its budget might be 300_000 (as an integer - if you've never seen underscores in an integer, it's just a style of representing thousands. It doesn't change anything.)
#The newsroom's name doesn't change but you should be able to read it outside of the class. The budget does change, so it should be readable and writable outside of the class.
#Test your class by instantiating a Newsroom with driver code.

### RELEASE 2 ###
#We've got a newsroom and a budget - now its time to hire some reporters! Create a reporters instance variable which can hold the reporter's name and their list of skills. (Each reporter has multiple skills!) It should be empty on creation.
#When we find a new reporter that we want, we'll need to save them in our list. Create an instance method to add_reporter to our list. If the reporter already exists in our list, we'll need to notify the user that we can't hire them!
#Test your method by adding a few reporters in your driver code.


### RELEASE 3 ###
#This newsroom is starting to get crowded - we should probably figure out when we've maxed out our budget. The first step to this is figuring out each reporter's salary.
#Create an instance method that takes a person's name and calculates the salary_for that name. Since reporters get paid on how big their name is in the industry, let's be literal here and say that their salary is $10,000 for every character in their name! (Note: spaces count as a character!)
#Test your method by calculating the salary_for("Anderson Cooper") - he should get 150000 if you've done it correctly.

### RELEASE 5 ###
#Now that we've done these calculation methods, it's time to bring it all together into a method that can tell us if we can afford to hire a new reporter.
#Create an instance method that takes a reporter's name, and returns true if the newsroom has_budget? left to hire them, and false if the budget is less than the total existing salaries plus the new reporter's salary.
#Test your code by adding some driver code to take some reporters and figure out if you have budget to hire "Rachel Maddow". Hint: With "Anderson Cooper" and "Wolf Blitzer" already on your team, you don't.

### RELEASE 6 ###
#Let's refactor our add_reporter to use our has_budget? to make wise hiring decisions.

#Change the add_reporter method to only add a reporter to our list when we're sure we have enough budget for them. If has_budget? returns false, we need to tell the user that we can't afford them.

#Test that your refactors are deliberately not letting you hire more than your budget. For example, if you hire "Anderson Cooper" and "Wolf Blitzer", you won't be able to hire "Christiane Amanpour" as well on a $300,000 budget!

class Newsroom

  attr_reader :name
  attr_accessor :budget

  def initialize(name, budget)
    @name = name
    @budget = budget
    @reporters = {}
  end

  def add_reporter(name, skills)
    if has_budget?(name)
      if !@reporters.has_key?(name)
      @reporters[name] = skills
      end
    else
      "We can't afford to hire #{name}"
    end
  end

  def salary_for(name)
    #char_length = name.length
    #salary = char_length * 10_000
    name.length * 10_000
  end

  def total_salaries
    cost = 0
    @reporters.each_key do |name|
    cost += salary_for(name)
    end
    cost
  end

  def reporter_have_skill(skill)
      skilled_reporters = @reporters.select do |name, skills|
        skills.include?(skill)
        end
      skilled_reporters.keys
  end

  def has_budget?(new_reporter)
    (budget - total_salaries) >= salary_for(new_reporter) #returns true or false..
  end

    #    #budget_available = @budget - total_salaries
    #    if (budget - total_salaries) >= salary_for(new_reporter) #returns true or false.. so we dont need the conditional statement
    #      return true
    #    else
    #      return false
    #    end

  def friendly_print
    puts "Welcome to the #{@name} Newsroom!"
    puts "Your reporting team is:"
    @reporters.each do |name, skills|
    puts "- #{name}, #{skills}"
    #-Anderson Cooper, specializing in politics, economics, grey hair.
    #- Wolf Blitzer, specializing in politics, moustaches, yelling.
    #- Jim Acosta, specializing in economics, smiling.
    end
    puts "Thank you for watching! Good night!"
  end

end

news = Newsroom.new("ABC", 350_000)
news.add_reporter("Anderson Cooper", ["specializing in politics", "economics", "grey hair"])
news.add_reporter("Wolf Blitzer", ["specializing in politics", "moustaches", "yelling"])
news.add_reporter("Jim Acosta", ["specializing in economics", "smiling"])
#news.salary_for("Anderson Cooper")
#news.total_salaries
#news.has_budget?("Rachel Maddow")
news.friendly_print
p news.reporter_have_skill("moustaches")
p news.salary_for("Jim Acosta")