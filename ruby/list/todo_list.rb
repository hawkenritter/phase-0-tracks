class TodoList
  def initialize(dishes, lawn)
    @dishes = dishes
    @lawn = lawn
  end
  def get_items
    list_array = []
      list_array << @dishes
      list_array << @lawn
    p list_array
  end

end

#list = TodoList.new("Do the dishes", "Mow the lawn")
#p list.get_items