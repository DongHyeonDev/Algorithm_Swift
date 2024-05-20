func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result: [Int] = []
    for num in arr {
        if num % divisor == 0 {
            result.append(num)
        }
    }
    if result.isEmpty {
        result.append(-1)
    }
    return result.sorted()
}