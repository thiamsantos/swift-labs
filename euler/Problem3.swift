func isPrime(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    
    if n <= 3 {
        return true
    } 
    
    if n % 2 == 0 || n % 3 == 0 {
        return false
    }
    
    var i = 5
    
    while i * i <= n {
        if n % i == 0 || n % (i + 2) == 0 {
            return false
        }
            
        i = i + 6
    }
    
    return true
}

func problemThree(_ n: Int) -> Int {
    var acc = [Int]()
    for index in 1...n {
        if n % index == 0 && isPrime(index) {
            print(index)
            acc.append(index)
        }
    }
    
    if let lastPrime = acc.last {
        return lastPrime
    }
    
    return n
}


print(problemThree(600851475143))