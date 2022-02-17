// Task 1
// Дана строка (UTF-8). Найти самый часто встречаюшийся в ней символ. Если несколько символов встречаются одинаково часто, то можно вывести любой.

import Foundation
let str = "ababa"
var char = Array(str)
var simbol = ""
var count = 0


var dict: [Character : Int] = [:]

for elem in char {
    if dict[elem] == nil {
        dict[elem] = 1
    } else {
        dict[elem]! += 1
    }
    
    for key in dict {
        if key.value > count {
            count = key.value
            simbol = "\(key.key)"
        }
    }
}

print("Simbol: \(simbol), count: \(count)")

// Сложность O(N+K), так как К всегда меньше N и К - контстанта, то можно сказать, что сложность равна O(N)
