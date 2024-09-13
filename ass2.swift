import UIKit
import SwiftUI

//easy task 1
let fruits = ["🍎","🍓","🍈","🍉","🍐"]
let thirdF = fruits[2]
print("The third fruit is \(thirdF)")

//easy task 2
var favoriteNum: Set<Int> = [3, 12, 21, 30, 24]
favoriteNum.insert(7)
print("Updated set of favorite numbers: \(favoriteNum)")

//easy task 3
let programmingLanguages = ["Swift": 2014, "Python": 1991, "Java": 1995]
if swiftReleaseYear = programmingLanguages["Swift"]{
    print("The release year of Swift is \(swiftReleaseYear)")
}else{
    print("Swift not found in the dictionary.")
}

//easy task 4
var colors = ["🟠","🟡","🟢","🟣"]
colors[0] = "🟤"
print("Updated array of colors: \(colors)")

//Medium Tasks 1
let firstSet: Set<Int> = [1, 2, 3, 4]
let secondSet: Set<Int> = [3, 4, 5, 6]
let intersectionSet = firstSet.intersection(secondSet)
print("The intersection of the two sets is: \(intersectionSet)")

//Medium Tasks 2
var studentGrades = ["Berik": 2, "Samat": 3,"Alma": 4]
studentGrades["Berik"] = 4
print("Updated student grades: \(studentGrades)")

//Medium Tasks 3
let firstArray = ["apple", "banana"]
let secondArray = ["cherry", "date"]
let array = firstArray + secondArray
print("Merged array: \(array)")

//Hard Tasks 1
var countryPopulations = ["USA": 331_000_000, "India": 1_366_000_000, "China": 1_398_000_000]
countryPopulations["Kazakhstan"] = 20_000_000
print("Updated country populations: \(countryPopulations)")

//Hard Tasks 2
var firstSet: Set<String> = ["cat","dog"]
let secondSet: Set<String> = ["dog","mouse"]
var unionSet = firstSet.union(secondSet)
unionSet.subtract(secondSet)
print(unionSet)

//Hard Tasks 3
let studentGrades = [
    "Berik": [2,3,4],
    "Samat": [3,4,3.2],
    "Alma": [4,3,2]
]
if let brianGrades = studentGrades["Samat"]{
    let secondGrades = brianGrades[1]
    print("The second grade for Samat is \(secondGrades).")
}else{
    print("Student not found.")
}
