import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let numword = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0 ..< numword.count {
        result = result.replacingOccurrences(of: numword[i], with: String(i))
    }
    return Int(result)!
}