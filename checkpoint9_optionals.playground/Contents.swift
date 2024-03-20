import Cocoa

// function accepts optional array of integers, returns one randomly
// if array is missing or empty, return random number from 1..100
// return in one line
func optionalArray (_ number: [Int]?) -> Int{
    return number?.randomElement() ?? Int.random(in: 1...100)
}

optionalArray([1,2,3,4,5])
