func problemOne(maxNumber: Int) -> Int {
	let range = 0..<maxNumber
	return range
	    .filter{number in number % 3 == 0 || number % 5 == 0}
		.reduce(0){x, y in x + y}
}


print(problemOne(maxNumber: 1000))