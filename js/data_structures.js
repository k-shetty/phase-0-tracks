var horse_color = ["blue","brown","black","white"];
var horse_name = ["ed","alex","susan","betty"];

horse_color.push("green");
horse_name.push("greg");
console.log(horse_color)
console.log(horse_name)

var horse_object = {};
	for (var i = 0; i < horse_name.length; i++){
	horse_object[horse_name[i]] = horse_color[i]}

console.log(horse_object)


function Car(color, make, horsepower){
	this.color = color;
	this.make = make;
	this.horsepower = horsepower;

	console.log("New car is created");

	this.horn = function() { console.log("Beep. Beep!!"); };
	this.accelerate = function() { console.log("speeds up")};
}

	
var anotherCar = new Car("blue","Nissan",200);
console.log(anotherCar);
anotherCar.horn();
anotherCar.accelerate();

//can use a for (var in) loop to loop through keys in an object
//advantages of using an constructor fucntion is that it makes it easier if you wanted to create multiple objects from it.  You will be able to check if the object came from that constructor fucntion.
//can create server load issues with each created instance. Does not allow for much flexbility.