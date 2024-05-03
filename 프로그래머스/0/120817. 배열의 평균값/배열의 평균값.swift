import Foundation

func solution(_ numbers:[Int]) -> Double {
    var sum: Double = 0
    for num in 0 ... numbers.count - 1 {
        sum += Double(numbers[num])
    }
    return sum / Double(numbers.count)
}