import Foundation

func solution(_ num:Int) -> Int {
    var number = num
    var count = 0
    while number > 1 {
        if (count > 500){
            return -1
        }
        switch number % 2 {
        case 0:
            number /= 2
            count += 1
        case 1: 
            number = number * 3 + 1
            count += 1
        default:
            continue
        }
    }
    
    return count
}