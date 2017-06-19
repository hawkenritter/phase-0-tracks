# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # initialize empty hash
  # convert items in string to hash keys:
      # convert string into array using
      # iterate through array assign each string item to a hash key with default value of x
  # set default quantity
      # iteration loop
      # grocery_list["key_name1"] => 3

  # print the list to the console [can you use one of your other methods here?]
      # call the method for printing a list *below*

# output: [what data type goes here, array or hash?]
      # make output return hash
      # grocery_list, call the hash so that the last evaluated item is the hash.. and then that is returned

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
      # Add new hash key based on item name
      # Tell method there may or may not be a argument passed in for quantity
            # assign quantity to 'optional-quantity' argument in method definition
      # Access method that contains initialized hash def add_item(create_list, item_name, quantity = 3)
# output:
    # updated grocery list
# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
  # iterate through hash and print the key and hash using interpolation
# output:






#DRIVER CODE
create_list("apples oranges carrots")
#only if initialized outside of methods
add_item(grocery_list, "chocolate", 200)

