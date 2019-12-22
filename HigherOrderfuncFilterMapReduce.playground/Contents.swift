import UIKit

let numbers = [1,2,3,4,3,3]

//1. filter into [3, 3, 3], Then filter into [2, 4] (even numbers)

// Normal way of doing above operation.
var filteredArray = [Int]()
var evenArray = [Int]()
for number in numbers {
    if number == 3{
        filteredArray.append(number)
    }
    if number % 2 == 0{
        evenArray.append(number)
    }
}

print(filteredArray)
print(evenArray)

//Using higher Order function

let filtered = numbers.filter({$0 == 3})
let evenNum = numbers.filter({$0 % 2 == 0})
print(filtered)
print(evenNum)

//2.  transform [1, 2, 3, 4] -> [2, 4]


