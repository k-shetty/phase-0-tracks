console.log("The script is running!");

// var div = document.getElementsByTagName('div');

var div = document.querySelectorAll('div');

div.forEach(function(element) {
	element.style.border = "2px dotted green";
});