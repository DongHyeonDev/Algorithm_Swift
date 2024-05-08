func solution(_ n:Int) -> Int {
    var result: Int = 0
    
    if n > 0 {
        for num in 1 ... n {
            if n % num == 0 {
                result += num
            }
        }
        return result
    }
    return 0
}