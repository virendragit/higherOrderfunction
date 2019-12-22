import UIKit


//compactMap : can be used to remove nil and optional value.
//filter: can be used to filter based on multiple factors.

let arrayWithNil:[String?] = ["eleven" , nil , "demogron" , nil , "max" , nil ,"lucus" ,nil ,"dustion"]
let filterNilArray = arrayWithNil.compactMap{$0}
print(filterNilArray)


let numbers = Array(1...100)
let evenNumbers = numbers.filter {$0%2 == 0}
print(evenNumbers)
let oddNumbers = numbers.filter {$0%2 != 0}
print(oddNumbers)

let name:[String] = ["Jon snow" , "Arya Stark" ," Jamie Lanniester" , "Sansa Stark", "Catelen Stark"]
let starkFamily = name.filter{$0.hasSuffix("Stark")}
print(starkFamily)

let arrayWith_min_10_char = name.filter{ $0.count > 10}
print(arrayWith_min_10_char)

let randomNumber:[Int] = [1 ,3,45,6743,4673,435,4162,6657,2431,658,686,56,3456,8875,325,46,2,66537,6]
let sortednumber = randomNumber.sorted()
print(sortednumber)

let alphabets:[Character] = ["V" ,"I" ,"S" ,"H" ,"W" ,"W" ,"A" ,"S", "v" ,"i", "s", "h","w","a","s"]
let sortedAlbhabets = alphabets.sorted()
print(sortedAlbhabets)

let evenFirstSorted = randomNumber.sorted
    { (a, b) -> Bool in
        return a % 2 == 0
        
}
print(evenFirstSorted)

let graterThanArray = randomNumber.sorted(by: >)
print(graterThanArray)
let lesserThanArray = randomNumber.sorted(by: <)
print(lesserThanArray)

let sumOfNumbers = numbers.reduce(0, {$0 + $1})
print(sumOfNumbers)

let nameString = name.reduce("", {$0 + $1.replacingOccurrences(of:"",with:"")})
print("type of name :- \(type(of: name)) , type of nameString :- \(type(of: nameString))")
