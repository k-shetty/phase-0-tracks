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
		if (array[i].length > longest.length){
			longest = array[i]
		}
	}
	return longest	
}


//Driver Code

//Release 0
var test = ["long phrase","longest phrase","longer phrase"];
var test2 = ["a", "abcdef", "abd", "adkjandjwadwj"];
console.log(longest_item(test))
console.log(longest_item(test2))