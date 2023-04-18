import UIKit

// Problems

// 1. You can iterate over the key-value pairs in a dictionary with a for-in loop. Each item in the dictionary is returned as a (key, value) tuple. Print all the values from `colorHex`.


var colorHex: [String:String] = [
    "purple" : "#6C3483",
    "blue" : "#2874A6",
    "green": "#1E8449" ,
    "orange" : "#D35400",
    "yellow" : "#F1C40F",
    "white" : "#FFFFFF",
    "black" : "#000000"
]
print(colorHex)


// 2. Given an array of colors. We need to know how many times each color appears in the array.


var colors = ["red", "orange", "purple", "pink", "blue", "red", "green", "red", "blue", "purple", "pink" , "purple", "purple"]
var times: [String : Int] = [:]
for color in colors {
    times[color] = (times[color] ?? 0) + 1
}
print(times)


//Your solution should lead to this answer:


//red - 3
//orange - 1
//purple - 4
//pink - 2
//blue - 2
//green - 1


// 3. Write a function that returns the first N Fibonacci numbers.

// Sequence: 1,1,2,3,5,8,13


func fibo(n: Int) -> [Int] {
    assert(n > 1)
    var array = [0, 1]
    while array .count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}
print(fibo(n: 8))

//example:

//fibo(n: 7) -> [1,1,2,3,5,8,13]

//fibo(n: 5) -> [1,1,2,3,5]


// 4. Write a function that prints the powers of 2 that are less than or equal to N.
func teaPot(n: Double) -> Double {
    let result = pow(n, 2)
    let i = 0 <= n
    print("\(i). Answer is \(result) squared.")
    return result
}
teaPot(n: 7)

// 5. Given:


// var coursesAndStudents = [("MOB", 30), ("BEW", 40), ("FEW", 30), ("DS", 40)]


// Write a function that prints how many students belong to each track.

//Output:

//There are 30 students in the MOB track
//There are 40 students in the BEW track
//There are 30 students in the FEW track
//There are 40 students in the DS track

func studentsAmount() -> String{
    let coursesAndStudents = ["MOB":30, "BEW":40, "FEW":30, "DS":40]
    var str = ""
    for (course, totalStudents) in coursesAndStudents {
        str += "In \(course), there's a total of \(totalStudents) students.\n"
    }
    return str
}
print(studentsAmount())

// 6. Write a function to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
func equalFirstLastNum(number: Int, array:[Int]) -> Bool {
    if array.first == number && array.last == number
    {
        return true
    }
    else
    {
        return false
    }
}
print(equalFirstLastNum(number: 3, array: [3, 1, 4, 5, 9, 2, 3]))
print(equalFirstLastNum(number: 3, array: [3, 1, 4, 5, 9, 2, 1]))

// 7. Write a function to compute the sum of all the elements of a given array of integers.
func arraySum(array: [Int]) -> Int {
    let total = array.reduce(0, +)
    print(total)
    return total
}
arraySum(array: [3, 1, 4, 5, 9, 2, 3])

// 8. Write a function to reverse the elements of an array of integers to left direction. `[1,2,3]` becomes `[3,2,1]
func arrayReverse(array: [Int]) -> [Int] {
    return array.reversed()
}
print(arrayReverse(array: [1,4,7,9]))

// 9. Write a function that accepts a String as its only parameter, and returns true if the string has
// only unique letters.
func stringUnique(array: [String]) -> Bool {
    let uniqueArray = ["H", "A", "M", "Z", "A"]
    let unique = Array(Set(array))
    if uniqueArray.elementsEqual(uniqueArray) {
        print(true)
        return true
    } else {
        print(false)
        return false
    }
}
stringUnique(array: ["I", "B", "R", "A", "H", "I", "M"])

// 10. Write a function that accepts a String and a character and returns how many times that specific character appears in the string.
func characterTimesInString(string: String) -> Int {
    let characterCount = string.components(separatedBy: "t")
    print(characterCount.count-1)
    return characterCount.count-1
}
characterTimesInString(string: "ABetterNameThanThat")

// 11.  Given a Grid with the following numbers.


// Write a function that adds up the elements in the even rows only, like this:
func evenSumRows(inputArray: [Int]) -> Int {
    var sum: Int = 0
    for i in 0..<inputArray.count {
        if (i / 5) % 2 == 0 {
            sum += inputArray[i]
        }
    }
    return sum
}
print(evenSumRows(inputArray: [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 9]))
