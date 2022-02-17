// Дана последовательность чисел длинной N
// Найти первое (левое) вхождение положительного числа Х в неё или вывести -1, если число Х не встречалось.

let seq1 = [1,4,5,7,8,9,56,33]
var idx = -1

//TESTS
let seqIsEmpty: [Int] = []
let seqContainsOne = [2]
let seqXIsOnFirstIndex = [2,4,5,7,8,9]
let seqXIsOnLastIndex = [3,4,5,7,8,2]
let seqAllNegative = [-1,-4,-6,-8]

func searcher(sequence: [Int], x: Int) -> String {
    guard sequence.isEmpty == false else { return "-1"}
    guard x >= 0 else { return "Vvedite pologitelnoe chislo"}
    
    for i in 0...sequence.count - 1 {
        if sequence[i] == x && idx == -1 {
            idx = i
        }
     }
    return "\(idx)"
}

searcher(sequence: seq1, x: 9)
