// hello world output on console
/**console.log("hello world!");

//variables

//immutable variables using CONST
const nameOfPerson= "Salaash";

//mutable variables using LET
let age= 18;
let school= "strathmore";
console.log(`NAME : ${nameOfPerson} , AGE : ${age}`);
console.log(`SCHOOL : ${school}`);

//types of variables

//numbers
const year =2023;
console.log(`year: ${year}`);

//boolean
let isLoggedIn = true;
console.log(`isLoggedIn: ${isLoggedIn}`);

//array
let fruits = ["apples", "mango", "oranges", "watermelon", "banana"];
console.log(fruits);
//targeting a certain element in an array
console.log(fruits[0]);
//checking size of an array
console.log(fruits.length);

//object
let bottle = {
    type: "water bottle",
    color: "green",
    brand: "blueband",
    isOld:true,
    content: ["hydrogen", "hydrogen", "oxygen",],
    yearOfManufacture:2001
}
console.log(bottle);
//targeting a particular value in an object using its key
console.log(bottle.type);
console.log(bottle.isOld);



//FUNCTIONS
//what : addition
//take one variable and add to another
//return the result
function addition(){
//variable 1 and variable 2
let x = 12;
let y = 12;
//adding
let sum = x+y;
return sum;
}
//calling the function
//NB:a variable(sum)cannot be accessed outside if it is found within a function
let sum = addition();
console.log(sum);


//parameterised function
function minus(x,y) {
    //two or more values (x,y)
    let subtraction = x-y;
    return subtraction;
}
//call the function
let subtraction = minus(29, 45);
//console.log(subtraction)
console.log(subtraction);
*/

//LOOPS
//iteration
//conditional
//TYPES
//for loop
// do while loop

//IMPLEMENTING A FOR LOOP

//creating an initializer
let x = 0;
//setting the max digit
let maxNumber = 10;
//for loop takes in three parameters separeted by semi colons
//first is the initialiser - sets the start point of your loop
//condition- allows the code block to run until the condition is false
//incrementer/decrementer - increases or decreses the initial value by 1

for(x=0;x<=maxNumber;x+=2) {
    console.log("running the for loop" ,x, "time.");
}
x = 0; // overidding the value of x
//DO WHILE LOOP
do{
    //block of statement to be run
    console.log("running for the",x, "time.");
    //increment
    x++;
}

while(x<=maxNumber);
x = 0;
maxNumber =  10;
//while loop
while(x<=maxNumber) {
console.log("pounding ginger",x,"times");
x++;
};
