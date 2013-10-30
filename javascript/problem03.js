// Largest Prime Factor
// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143

var utils = require('./euler'),
		total = 600851475143,
		euler = new utils();


total = 13195;


function getFactors (number) {
	var upperBound = Math.floor(Math.sqrt(number)),
			factors = [];

	for (var i = 2; i < upperBound; i++) {
		if (total % i === 0 && euler.isPrime(i) ){
			factors.push(i);
		}
	};

	return factors;
}


factors = getFactors(total);

console.log(factors);




