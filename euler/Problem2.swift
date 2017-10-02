func getCurrentValue(_ values: [Int]) -> Int {  
    return values.last! + values[values.index(of: values.last!)! - 1]
}

func problemTwo(maxValue: Int) -> Int {
    var values = [1, 2]
    var current = getCurrentValue(values)
    
    while current < maxValue {
        values.append(current)
        current = getCurrentValue(values)
    }
    
    return values.filter{value in value % 2 == 1}.reduce(0){x, y in x + y}
}

print(problemTwo(maxValue: 4_000_000))