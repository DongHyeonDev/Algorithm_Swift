func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: [Int64] = []
    for num in 1 ... n {
        result.append(Int64(x * num))
    }
    return result
}