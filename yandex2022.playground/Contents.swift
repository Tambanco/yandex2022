// Task 1
// Дана строка (UTF-8). Найти самый часто встречаюшийся в ней символ. Если несколько символов встречаются одинаково часто, то можно вывести любой.
let oneString = "abababbbccccccc"
let chars = Array(oneString)
var strElement = ""
var count = 0

for i in 0...chars.count - 1 {
    var simbolCount = 0
    for j in 0...chars.count - 1 {
        if chars[i] == chars[j] {
            simbolCount += 1
        }
    }
    if simbolCount > count {
        count = simbolCount
        strElement = "Simbol \(chars[i]), count = \(simbolCount)"
    }
    
}
print(strElement)
