//RELEASE 0

function longest_word(inputed_array) {
  var biggestLength = 0
    for (var i = 0; i < inputed_array.length; i++)
    if (inputed_array[i].length > biggestLength) {
      biggestLength = inputed_array[i].length;
      biggestString = inputed_array[i];
    }
    return biggestString
}

console.log(longest_word(["long phrase","longest phrase","longer phrase"]))


//RELEASE 1

var kValue = function keyValue(object_1, object_2) {
  for (var i in object_1){
    if (object_2[i] === object_1[i]){
      return true;
    }
  }
  return false;
}
console.log(kValue({name: "Steven", age: 54}, {name: "Tamir", age: 55}))

//RELEASE 2

function builder(integer) {
  randNum = Math.floor(Math.random() * 10); {
    var text = "";
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
      for( var i=0; i = integer; i++ ) {
        text += alphabet.charAt(randNum);
      }
    return text;
  }
}
builder(3)
