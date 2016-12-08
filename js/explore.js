// psuedocode

// split string into an array
// iterate through original array, adding letters at the beginning of a new array
// new array should contain letters in reverse order
// join new array and output to console. 

function reverse(str) {
  var string = str;
  var stringArray = string.split('');
  var reverseArray = [];
  
  for (var i = 0; i < stringArray.length; i++) {
  	reverseArray.unshift(stringArray[i])
  }
  
  return (reverseArray.join(''))
}

// driver code

var reverseString = reverse("Surface Pro 3");

if (1 == 1) {
	console.log(reverseString);
}

