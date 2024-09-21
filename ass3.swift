import UIKit
import Foundation

// Problem 1: FizzBuzz
for i in 1...100{
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    }else if i % 3 == 0 {
        print("Fizz")
    }else if i % 5 == 0 {
        print("Buzz")
    }else{
        print(i)
    }
}

// Problem 2: Prime Numbers
func isPrime(_ n: Int)->Bool{
    if n <= 1 {
        return false
    }
    if n == 2 {
        return true
    }
    for i in 2..<n {
        if n % i == 0{
            return false
        }
    }
    return true
}
for i in 1...100 {
    if isPrime(i) {
        print(i)
    }
}

// Problem 3: Temperature Converter
func cToF(_ c: Double)->Double{
    return (c*9/5)+32
}
func cToK(_ c: Double)->Double{
    return c+273.15
}
func fToC(_ f: Double)->Double{
    return (f-32)*5/9
}
func fToK(_ f: Double)->Double{
    return fToC(f)+273.15
}
func kToC(_ k: Double)->Double{
    return k-273.15
}
func kToF(_ k: Double)->Double{
    return cToF(kToC(k))
}
if let input = readLine(), let t = Double(input){
    if let unit = readLine(){
        switch unit.uppercased() {
        case "C":
            let f = cToF(t)
            let k = cToK(t)
            print("\(t)°C is equal to \(f)°F and \(k)K")
        case "F":
            let c = fToC(t)
            let k = fToK(t)
            print("\(t)°F is equal to \(c)°C and \(k)K")
        case "K":
            let c = kToC(t)
            let f = fToK(t)
            print("\(t)K is equal to \(f)°F and \(c)°C")
        default:
            print("Invalid unit. Please enter C, F, or K.")
        }
    }else {
        print("Unit input error.")
    }
}else {
    print("Invalid temperature value.")
}
// Problem 4: Shopping List Manager
var shoppingList: [String] = []

func displayMenu() {
    print("""
    Shopping List Manager:
    1. Add item
    2. Remove item
    3. Display list
    4. Exit
    """)
}

func addItem() {
    print("Enter the item to add:")
    if let item = readLine() {
        shoppingList.append(item)
        print("\(item) added to the list.")
    }
}

func removeItem() {
    print("Enter the item to remove:")
    if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
        print("\(item) removed from the list.")
    } else {
        print("Item not found in the list.")
    }
}

func displayList() {
    if shoppingList.isEmpty {
        print("Your shopping list is empty.")
    } else {
        print("Shopping List:")
        for (index, item) in shoppingList.enumerated() {
            print("\(index + 1). \(item)")
        }
    }
}

var isRunning = true

while isRunning {
    displayMenu()
    if let choice = readLine(), let option = Int(choice) {
        switch option {
        case 1:
            addItem()
        case 2:
            removeItem()
        case 3:
            displayList()
        case 4:
            isRunning = false
            print("Exiting application.")
        default:
            print("Invalid option. Please choose 1-4.")
        }
    }
}

// Problem 5: Word Frequency Counter
func wordFrequencyCounter(_ sentence: String) {
    var wordFrequency: [String: Int] = [:]
    let words = sentence
        .lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .filter { !$0.isEmpty }
    
    for word in words {
        wordFrequency[word, default: 0] += 1
    }
    
    for (word, count) in wordFrequency {
        print("\(word): \(count)")
    }
}

print("Enter a sentence:")
if let sentence = readLine() {
    wordFrequencyCounter(sentence)
}

// Problem 6: Fibonacci Sequence
func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    var sequence = [0, 1]
    
    while sequence.count < n {
        let nextNumber = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(nextNumber)
    }
    
    return Array(sequence.prefix(n))
}

print(fibonacci(10))

// Problem 7: Grade Calculator
func gradeCalculator(students: [String: Double]) {
    let scores = Array(students.values)
    let average = scores.reduce(0, +) / Double(students.count)
    
    let highestScore = scores.max() ?? 0
    let lowestScore = scores.min() ?? 0
    
    print("Average score: \(average)")
    print("Highest score: \(highestScore)")
    print("Lowest score: \(lowestScore)")
    
    for (name, score) in students {
        let aboveBelow = score >= average ? "above" : "below"
        print("\(name): \(score) (\(aboveBelow) average)")
    }
}

let students = [
    "Alice": 85.0,
    "Bob": 76.5,
    "Charlie": 90.0,
    "Diana": 72.0
]

gradeCalculator(students: students)

// Problem 8: Palindrome Checker
func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text
        .lowercased()
        .filter { $0.isLetter }
    
    return cleanedText == String(cleanedText.reversed())
}

print(isPalindrome("A man, a plan, a canal: Panama"))

// Problem 9: Simple Calculator
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    return b != 0 ? a / b : nil
}

var isRunning = true

while isRunning {
    print("Enter first number:")
    let firstNumber = Double(readLine() ?? "") ?? 0
    print("Enter second number:")
    let secondNumber = Double(readLine() ?? "") ?? 0
    
    print("Choose operation (+, -, *, /):")
    if let operation = readLine() {
        var result: Double?
        
        switch operation {
        case "+":
            result = add(firstNumber, secondNumber)
        case "-":
            result = subtract(firstNumber, secondNumber)
        case "*":
            result = multiply(firstNumber, secondNumber)
        case "/":
            result = divide(firstNumber, secondNumber)
            if result == nil {
                print("Error: Division by zero.")
            }
        default:
            print("Invalid operation.")
        }
        
        if let result = result {
            print("Result: \(result)")
        }
    }
    
    print("Do you want to perform another calculation? (y/n)")
    if let answer = readLine(), answer.lowercased() != "y" {
        isRunning = false
    }
}

//Problem 10: Unique Characters
func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet: Set<Character> = []
    
    for char in text {
        if characterSet.contains(char) {
            return false
        }
        characterSet.insert(char)
    }
    
    return true
}

print(hasUniqueCharacters("hello"))
print(hasUniqueCharacters("world"))
