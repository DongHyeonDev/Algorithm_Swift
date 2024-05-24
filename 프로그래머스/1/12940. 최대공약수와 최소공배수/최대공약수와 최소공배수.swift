func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), (n * m) / gcd(n, m)]
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let mod = a % b
    return mod == 0 ? min(a, b) : gcd(b, mod)
}