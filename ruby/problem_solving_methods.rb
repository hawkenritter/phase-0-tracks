#RELEASE 0
define method that takes two arguments, an array and integer
def array_search(arr, x)
  n = arr.length
  count = 0
  while count < n
    if arr[count] == x
      return count
      break
    else
      count += 1
    end
  end
  p arr
end
array = [1,3,4,2,5]
p array_search(array,4)

#RELEASE 1
def fib_sequence(x)
  array = [0,1]
  index = 0
  #some loop
    while index < x
      new_number = array[index] + array[index + 1]
      index += 1
      array << new_number
    end
     return array #maybe put inside while loop
end
p fib_sequence(6)

#RELEASE 2
def bubble_sort(arr)
 n = arr.length
 index = 0
 loop do
 swapped = false
  (n-1).times do |index|
   if arr[index] > arr[index + 1]
     arr[index], arr[index + 1] = arr[index + 1], arr[index]
     swapped = true
   end
   end
   break if not swapped
 end
   arr
end
p bubble_sort([1,3,4,2,5])

#############
#def bubble_sort(arr)
#  index = 0
#  n = arr.length
#  change = false
# while index < n - 1
#    if arr[index] > arr[index + 1]
#      puts "switchhhhh + #{index}"
#      arr[index], arr[index + 1] = arr[index + 1], arr[index]
#      change = true
#    else
#    index += 1#

#    end
#  end
#  arr
#end
#a = [1, 3, 4, 2, 5]
#p bubble_sort(a)