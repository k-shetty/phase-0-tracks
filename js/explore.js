// psuedocode

// split string into an array
// iterate through original array, adding letters at the beginning of a new array
// new array should contain letters in reverse order
// join new array and output to console. 

function reverse (str) {
  var string = str;
  var stringArray = string.split('');
  var reverseArray = [];
  
  for (var i = 0; i < string.length; i++) {
  	reverseArray.unshift(stringArray[i])
  }
  
  console.log(reverseArray.join(''))
}
