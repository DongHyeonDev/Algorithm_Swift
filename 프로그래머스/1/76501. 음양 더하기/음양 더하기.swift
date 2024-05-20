import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for index in 0 ..< absolutes.count {
        if signs[index] {
            sum += absolutes[index]
        } else {
            sum -= absolutes[index]
        }
    }
    return sum
}