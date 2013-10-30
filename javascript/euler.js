// Small Javascript library for helping with Euler problems

function Euler(){

}

Euler.prototype.isPrime = function (number) {
	if (number < 2){
		return false;
	} else if (number < 4){
		return true;
	} else if (number % 2 === 0){
		return false;
	} else if (number < 9 ){
		return true;
	} else if (number % 3 === 0){
		return false;
	} else {
		var sqrt = Math.floor(Math.sqrt(number));
		
		for (var i = 5; sqrt; i = i + 6) {
			if (number % i === 0) return false;
			if (number % (i+2) === 0) return false;
		};

		return true;

	}

}

Euler.prototype.fibonacci = function(test){
	console.log(test);
}


module.exports = Euler;