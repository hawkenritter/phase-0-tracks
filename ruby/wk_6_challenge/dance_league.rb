class Dancer

  attr_reader :name
  attr_accessor :age
  attr_accessor :tutu_color
  attr_accessor :card
  attr_accessor :remove_dancer
  def initialize(name, age, tutu_color)
    @name = name
    @age = age
    @tutu_color = tutu_color
    @card = []

  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  def queue_dance_with(your_name)
    @card << your_name
  end

  def remove_dancer
    @card.delete(@card[0])
  end

  def begin_next_dance
    return "Now dancing with #{@card[0]}."
    remove_dancer
    p @card
  end

  def change_color(new_color)
    @tutu_color = new_color
  end

end

##### Hi Glenna, This worked when I ran it manually, but I couldn't figure out why the remove dancer wasn't working in my test file...?

dancer = Dancer.new("Misty Copeland", 33, "pink")
dancer.queue_dance_with("hawk")
dancer.queue_dance_with("joe")
dancer.queue_dance_with("flow")
p dancer.card
p dancer.begin_next_dance
dancer.remove_dancer
p dancer.card




