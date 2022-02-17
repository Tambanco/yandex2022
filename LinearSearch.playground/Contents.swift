//// ЗАДАЧА №1
//// Дана последовательность чисел длинной N
//// Найти первое (левое) вхождение положительного числа Х в неё или вывести -1, если число Х не встречалось.
//
//let seq1 = [1,4,5,7,8,9,56,33]
//var idx = -1
//
////TESTS
//let seqIsEmpty: [Int] = []
//let seqContainsOne = [2]
//let seqAllEqual = [2,2,2,2]
//let seqAllNegative = [-1,-4,-6,-8]
//let seqXIsOnFirstIndex = [2,4,5,7,8,9]
//let seqXIsOnLastIndex = [3,4,5,7,8,2]
//
//func searcher1(sequence: [Int], x: Int) -> String {
//    guard sequence.isEmpty == false else { return "-1"}
//    guard x >= 0 else { return "Vvedite pologitelnoe chislo"}
//
//    for i in 0...sequence.count - 1 {
//        if sequence[i] == x && idx == -1 {
//            idx = i
//        }
//     }
//    return "\(idx)"
//}
//
//searcher1(sequence: seqAllEqual, x: 2)

////ЗАДАЧА №2
//// Дана последовательность чисел длинной N
//// Найти последнее (правое) вхождение положительного числа Х в неё или вывести -1, если число Х не встречалось.
//
//let seq = [2,4,6,4,6]
//var idx = -1
//
//func searcher2(sequence: [Int], x: Int) -> String {
//    guard sequence.isEmpty == false else { return "-1" }
//    guard x >= 0 else { return "Vvedite pologitelnoe chislo" }
//
//    for i in 0...sequence.count - 1 {
//        if sequence[i] == x {
//            idx = i
//        }
//    }
//
//    return "\(idx)"
//}
//
//// TESTS
//let seqIsEmpty: [Int] = []
//let seqIsOne = [4]
//let seqAllIsEqual = [4,4,4,4]
//let seqAllNegative = [-4,-4,-4]
//let seqFirst = [4,6,7]
//let seqLast = [3,5,4]
//let seqAllZero = [0,0,0,0]
//
//searcher2(sequence: seqAllZero, x: 0)

//Задача №3
//Дана последовательность чисел длиной N(N > 0)
// Найти максимальное число в последовательности

let seq = [1,4,7,3]

func maxNum(sequence: [Int]) -> Int {
    guard sequence.count > 1 else { return sequence[0] }
    
    var max = sequence[0]
    
    for i in 1...sequence.count - 1 {
        if sequence[i] > max {
            max = sequence[i]
        }
    }
    
    return max
}

//TESTS
let seqOne = [6]
let seqAllEqual = [9,9,9]
let seqAllNegative = [-2,-3,-7]
let seqAllZero = [0,0,0]
let seqFirst = [3,2,1]
let seqLast = [1,2,3]

maxNum(sequence: seqLast)
