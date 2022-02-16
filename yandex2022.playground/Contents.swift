// Task 1
// Дана строка (UTF-8). Найти самый часто встречаюшийся в ней символ. Если несколько символов встречаются одинаково часто, то можно вывести любой.
let str = "ababa"
var char = Array(str)
var simbol = ""
var count = 0

for i in 0...char.count - 1 {
    var newCount = 0
    for j in 0...char.count - 1 {
        if char[i] == char[j] {
            newCount += 1
        }
    }
    if newCount > count {
        count = newCount
        simbol = "\(char[i])"
    }
}

print("Simbol: \(simbol), count: \(count)")
