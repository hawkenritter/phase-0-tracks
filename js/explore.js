//release 4, javascript program, reverse string:

//Goal is to convert string 'hello' into the string 'olleh'
//first step might be to take the string and split it into some sort of array, or js equivalent
//next we would want to get the index position of each letter, and iterate through the array backwards.
//unshift..

function reverse(input) {
  reversed_string = "";
  for (var i = input.length - 1; i >= 0; i--)
    reversed_string += input[i];
  return reversed_string;
}
{
  console.log(reverse("hello"));
}

