var numbers = [1,2],
		sum = 0;

for (var i = 1; numbers[i] < 4000000; i++) {
	numbers.push(numbers[i] + numbers[i-1]);
};

numbers.pop();

for(var i = 0; i < numbers.length; i++){
	if (numbers[i] % 2 === 0){
		sum = sum + numbers[i];
	}
}
console.log(sum);

// 4613732