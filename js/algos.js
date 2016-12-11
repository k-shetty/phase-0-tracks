// Release 0
//write a function that takes an array of words or phrases and returns the longest word or phrase in the array. 
//So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". 

//Input: array
//Output: string
//Create variable with empty string as place holder.
//Iterate through array, compare length of current index with length of the place holder variable.
//Phrase with longest count gets assigned to place holder variable.

function longest_item(array) {
	var longest = "";

	for (var i = 0; i < array.length; i++){
		if (array[i].length > longest.length) {
			longest = array[i]
		}
	}
	return longest	
}


//Release 1

//write a function that takes two objects and checks to see if the objects share at least one key-value pair.

//Input: 2 objects
//Output: Boolean
//Iterate over the keys in the first object and see if they equal any keys in the second object.
//Return true if match,return false if no match

function matching_keys(object1, object2){
	for (var key in object1) {
		if (object1[key] == object2[key]) {
			return true
		}	
	}
	return false;
}



//Driver Code

//Release 0
// var test = ["long phrase","longest phrase","longer phrase"];
// var test2 = ["a", "abcdef", "abd", "adkjandjwadwj"];
// console.log(longest_item(test))
// console.log(longest_item(test2))

//Release 1
var object_1 = {name: "Steven", age: 54};
var object_2 = {name: "Tamir", age: 54};
var object_3 = {name: "Terrance", age: 45};
console.log(matching_keys(object_1,object_2))
console.log(matching_keys(object_1,object_3))
