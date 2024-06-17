import Foundation

func solution(_ elements:[Int]) -> Int {
    let n = elements.count
    var uniqueSums = Set<Int>()
    
    // 길이가 1부터 n까지의 모든 연속 부분 수열을 고려
    for length in 1...n {
        var currentSum = elements[0..<length].reduce(0, +)
        uniqueSums.insert(currentSum)
        
        for start in 1..<n {
            currentSum = currentSum - elements[start - 1] + elements[(start + length - 1) % n]
            uniqueSums.insert(currentSum)
        }
    }
    
    return uniqueSums.count
}