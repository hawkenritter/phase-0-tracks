# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # initialize empty hash

def create_list(input)
    grocery_list = {}
  # convert items in string to hash keys:
    input_array = input.split
        # convert string into array using
        # iterate through array assign each string item to a hash key with default value of x
       # set default quantity
      # iteration loop
      # grocery_list["key_name1"] => 3
    input_array.each do |i|
      grocery_list[i] = 3
    end
      # print the list to the console [can you use one of your other methods here?]
      # call the method for printing a list *below*
      # output: [what data type goes here, array or hash?]
      # make output return hash
      # grocery_list, call the hash so that the last evaluated item is the hash.. and then that is returned
    grocery_list
end

# Method to add an item to a list
def add_item(list, item_name, optional_quantity)

list[item_name] = optional_quantity

# input: list, item name, and optional quantity
# steps:
      # Add new hash key based on item name
      # Tell method there may or may not be a argument passed in for quantity
            # assign quantity to 'optional-quantity' argument in method definition
      # Access method that contains initialized hash def add_item(create_list, item_name, quantity = 3)
# output:
    # updated grocery list
end


# Method to remove an item from the list
def remove_item(list, item_removed)
  list.delete(item_removed)
end
# input:
# take the list as an argument and the item we want to remove
# steps:
  #navigate to the list, use delete method and specify which item we want to remove
# output:
  # the grocery list without the removed item

# Method to update the quantity of an item
def update_quantity(list, item_name, new_quantity)
  list[item_name] = new_quantity
end
# input:
# steps:
# output:

# Method to print a list and make it look pretty
def print_list(list, item_name, quantity)
  list.each do |item|
    puts "We need #{quantity} #{item_name}"
  end
end

# input:
# steps:
  # iterate through hash and print the key and hash using interpolation
# output:






#DRIVER CODE
#return values
list = create_list("apples oranges carrots")

add_item(list, "chocolate", 200)
p list

remove_item(list, "apples")
p list

update_quantity(list, "oranges", 10)
p list