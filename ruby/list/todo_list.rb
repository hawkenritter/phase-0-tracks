class TodoList
  def initialize(items)
    @items = items
  end
  def get_items
    @items
  end
  def add_item(new_item)
    @items << new_item
  end
  def delete_item(old_item)
    @items.delete(old_item)
  end
  def get_item(position)
    index_position = position.to_i
    @items[index_position]
  end
end

#list = TodoList.new(["do the dishes", "mow the lawn"])
#p list.get_items(0)

