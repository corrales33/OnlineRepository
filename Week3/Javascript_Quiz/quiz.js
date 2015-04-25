var user = {}
var responses = []

function question1() {

  	var name = prompt('What is your name?');
  	user.name = name

}

question1();

function question2() {

 	var firstQuestion = prompt('Is two the square root of four ? (Yes or No)');

  	if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  	} 
	else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  	} 
  	else {
    	alert("Please answer either Yes or No");
    return question2();
  	}

  	responses.push(firstQuestion);
}

question2();

function question3() {

  	var javascript = prompt('What is the method used in Javascript to know the length of an object: length, toUpperCase, push or slice?');

  	javascript = javascript.toLowerCase();

  	switch (javascript) {
    
    	case "length":
    		javascript = true;
    	break;
    	case "toUpperCase":
    		javascript = false;
    	break;
    	case "push":
    		javascript = false;
    	break;
    	case "slice":
    		javascript = false;
    	break;
    	default:
    		alert("Answer one of the four options, please!");
    		return question3();
    	break;
  	}

  	responses.push(javascript);
}

question3();

function question4() {

	var average = prompt('What is the average of the array [1,5,10,20]: 10, 9, 4 or 12?')

	var array = [1, 5, 10, 20];
	var sum = 0;

		for( i = 0; i < array.length; i++) {

			sum += array[i];
		}

	var result = sum/array.length;
	var result2 = parseInt(average);

		if( result2 === result ) {
			average = true;
		}
		else if( average === "10" ) {
			average = false;
		}
		else if( average === "4" ) {
			average = false;
		}
		else if( average === "12" ) {
			average = false;
		}
		else {
			alert("Answer one of the four options, please!");
			return question4();
		}

	responses.push(average);
		
}

question4();

function question5() {

	var prime = prompt("Enter a natural number (higher than 1) to see if it is prime or not!");
	var prime2 = parseInt(prime);

	if( isNaN(prime2) || prime2 <= 1 ) { 
		alert( prime2 + " is not a valid number. Try again!")
		return question5();
	}

	else if( prime2 === 2 ) {
		alert("Yes! Your number: " + prime2 + " is a prime number.")
		prime = true;
	}	

	for( i = 2; i < prime2; i++) {

		if( prime2 % i === 0 ) {
			var prime3 = "no"
			alert("Oh no! Your number: " + prime2 + " is not a prime number. It is divisible by " + i + " .")
			prime = false;
			break;
		}

		if( prime2 % i !== 0 ) {
			var prime3 = "yes";	
		}
	}

	if( prime3 === "yes") {
		alert("Yes! Your number: " + prime2 + " is a prime number.")
		prime = true;
	}

	responses.push(prime)

}

question5();

function evaluate(responsesArray) {

	total_true = 0
	total_false = 0

	for( i = 0; i < responses.length; i++) {

		if( responses[i] === true ) { 
			total_true += 1;
		}

		else {
			total_false += 1;
		}
	}

	user.marksGood = total_true
	user.marksBad = total_false

}

showResults();

function showResults() {

}

evaluate(responses);

alert("The user called: " + user.name + " has obtained " + total_true + " answers correct and " + total_false + " answers failed.")
