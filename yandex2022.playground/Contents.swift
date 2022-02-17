// Task 1
// Дана строка (UTF-8). Найти самый часто встречаюшийся в ней символ. Если несколько символов встречаются одинаково часто, то можно вывести любой.
let str = "ababBBBcsf"
var char = Array(str)
var simbol = ""
var count = 0

var charSet = Set(char)
var newCharSet = Array(charSet)

for element in newCharSet {
    var elementCount = 0
    for j in 0...char.count - 1 {
        if char[j] == element {
            elementCount += 1
        }
    }
    if elementCount > count {
        count = elementCount
        simbol = "\(element)"
    }
}

print("Simbol: \(simbol), count: \(count)")

// Сложность O(NK)
