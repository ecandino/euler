// 3's and 5's
var sum = 0;

for (var i = 1; i < 1000; i++) {
	if(i % 5 === 0 || i % 3 === 0){
		sum = i + sum;
	}
};
console.log(sum);

// 233168



