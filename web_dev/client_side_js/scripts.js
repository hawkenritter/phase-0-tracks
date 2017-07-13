console.log("The script is running");

var els = document.getElementsByTagName("em");
var el = els[0]
el.style.border = "2px solid red";

function addRedBorder() {
  var photo = document.getElementById("jarrius_photo");
  photo.style.border = "2px solid red";
}

var photo = document.getElementById("jarrius_photo");
photo.addEventListener("click", addRedBorder);


var msg = "Thank you for visiting our website!";
function addNewElement(){
  var newP = document.getElementsByClassName("hidden");
  newP[0].textContent = msg;
}

photo.addEventListener("click", addNewElement);