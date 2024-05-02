import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    var mul: Float = Float(num1) / Float(num2)
    return Int(mul * 1000)
}