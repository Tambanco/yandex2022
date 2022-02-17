// Дана последовательность чисел длинной N
// Найти первое (левое) вхождение положительного числа Х в неё или вывести -1, если число Х не встречалось.

let seq = [1,4,5,7,8,9]
var idx = -1

func searcher(sequence: [Int], x: Int) -> String {
    
    guard x >= 0 else { return "Vvedite pologitelnoe chislo"}
    
    for i in 0...sequence.count - 1 {
        if sequence[i] == x && idx == -1 {
            idx = i
        }
     }
    return "pervii index chisla \(x) = \(idx)"
}

searcher(sequence: seq, x: 1)
