func solution(_ n:Int) -> Int {
    var result = [1, 2]
    var index = 0
    
    while result.count < n {
        result.append((result[index] + result[index+1]) % 1234567)
        index += 1
    }
    return result[n - 1]
}