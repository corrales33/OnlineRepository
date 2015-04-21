
// EXERCISE 1
// 
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// You will see numbers from 0 to 9.
// Make the code counts from 9 to 0 with the least possible changes, 
/*

for( var i = 9; i >= 0; i-- )
{
	console.log( i );
}

*/



//EXERCISE 2
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Make the code shows all languages of the array with the least possible changes.

/*

var languages = [ "Cobol", "Ruby", "Javascript", "PHP", "CSS" ]

for( var i = 0; i <= 4; i++ )
{
	console.log( languages[i] );
}

*/



//EXERCISE 3
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// toUpperCase() is a method to put a string updercase
// Can you guess why it is not working in the code below? Fix it to work

/*

string = ["I like turtles"];
console.log( string[0].toUpperCase() );

*/



//EXERCISE 4
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// We want the “total” variable to store the summatory of every element in the array, (25 is the result in this example)
// Do it With the least possible changes.

/*

numbers = [3,5,2,7,8];
var total = 0;

for( var i = 0; i < 5; i++ )
{
total += numbers[i];
}

console.log( total );

*/




//EXERCISE 5
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Make the code show "I'm in!!" with only one change.

/*

var keep_rolling = true;

if( keep_rolling ){

	console.log( "I'm in!!" );

}

*/




//EXERCISE 6
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Without modifying the first instruction: var song = { title: "Hey Jude", author: "The Beatles" } complete the following requirements:
//  - Change the title of the song for "Helter Skelter"
//  - Add a new field named year and the value 1968. After that, show it through the console.

/*

var song = { title: "Hey Jude", author: "The Beatles" }
song.title = "Helter Skelter";
song.year = "1968";
console.log( song.author );
console.log( song.title );
console.log( song.year );

*/


//EXERCISE 7
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Look! The following switch is broken! It should show only the string corresponding to its case!
// can you fix it?

/*

var number = 2;

switch ( number ) {
  case 1:
    console.log("Hey, it is case 1");
break;
  case 2:
    console.log("Look! I'm in 2!");
break;
  case 3:
    console.log("Now I'm in 3!");
break;
  default:
    console.log("It's the boring default value");
break;
}

*/



//EXERCISE 8
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// This script stores in result the odd numbers from the "numbers" array
// Can you change the code below to get the even numbers instead?
// Bonus: It can be done without adding or deleting anything, just moving a command from one place to another


/*

var numbers = [1,2,3,4,5,6,7,8,9,10];
var result = [];

for( var i = 0; i < numbers.length; i++){

	result.push( numbers[++i] );

}

console.log( result );

*/



//EXERCISE 9
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// If b-- is the same as b = b -1, why is false this equality?
// Change the code the least possible to get that equality is true. 
// You are not allowed to modify the original values of 'a' and 'b'

/*
	var string = "";
	var a = 1;
	var b = 2;
	
	console.log( a === --b );

*/

//EXERCISE 10
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// What's the length of the array items at the end of the script?
// Uncomment the commands that show 'true' through the console
// (There can be more than one)


/*

	var intruder;

	shopping_cart = {
		items: []
	}

	shopping_cart.items.push("tomatoes", "potatoes");

	intruder = shopping_cart.items
	intruder.push("carrots", "pumpkin");

	console.log(shopping_cart.items.length === 2)
	console.log(intruder.length === 2)
	
*/




//EXERCISE 11
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Delete the 'delete me and add a value' tags (don't forger to remove the '' too!) 
// and place the values that makes these equalities true

/*

	var a = b = c = 123;

	b = 7;

	console.log( a === 123 );
	console.log( b === 7 );
	console.log( c === 123 );

*/



//EXERCISE 12
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Uncomment the commands that show 'true' through the console
// (There can be more than one)

/*

	var a = b = c = [1,2,3];

	b[1] = 7;

	console.log( a[1] === 2 );
	console.log( c[1] === 2 );

*/



//EXERCISE 13
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// This script shows the numbers stored in "numbers" array in ascending order.
// Modify the code to print the numbers in descending order. 
// BUT we want them stored in a new array.
// Hints: 
//  - First create an empty array
//  - Fill it in the loop
//  - After the loop show the new array. You only have to write console.log(<name of the array>)

/*

var numbers = [1,2,3,4,5];
var array = [];
for( var i = 4; i >= 0; i--){
	array.push(numbers[i]);
}
console.log(array);

*/


//EXERCISE 14
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Stopping the execution in a conditional statement is a bad use of the for loop.
// For loop should be used only when we want to iterate a prefix amount of elements.
// When we want to iterate until a condition is broken, there is a better loop. Can you improve the code below?

/*

var languages = [ "Cobol", "Ruby", "Javascript", "PHP", "CSS" ];
var i = 0
while(languages[i]!=="PHP"){
	console.log(languages[i]); i++;
}

*/


//EXERCISE 15
//
// Restore the comments marks (/* */) of the previous exercise
// Uncomment the exercise code deleting /* and */ chars
// Open the console and reload the index page to see the result of the code.
// Take your time and think about what will be the value of result at the end
// of the execution. There are three options, uncomment the one you think is true
/*

var numbers = [1,2,3,4,5];
var chars = ["a", "b", "c", "d"];
var result = [];
var sum = i = j = 0;
var total = "";

while( i < numbers.length ) {
	sum += numbers[i];

	while( j < chars.length ) {
		total += chars[j];
		j++;
	}

	result.push( total + sum );

	 j = 0;
	total = "";
	
	i++;
}

console.log( result[1] === "b2" );
console.log( result[3] === "abcd15" );

*/
