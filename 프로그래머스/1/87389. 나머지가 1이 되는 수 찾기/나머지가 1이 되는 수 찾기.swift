import Foundation

func solution(_ n:Int) -> Int {
    
    for num in 2 ..< n {
        if n % num == 1 {
            return num
        }
    }
    return 0
}