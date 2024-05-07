func solution(_ arr:[Int]) -> Double {
    var sum: Double = 0
    for num in 0 ... arr.count - 1 {
        sum += Double(arr[num])
    }
    return sum / Double(arr.count)
}