import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var maxOfMaxNum: Int = 0
    var maxOfMinNum: Int = 0
    
    for i in sizes {
        maxOfMaxNum = max(maxOfMaxNum, i.max()!)
        maxOfMinNum = max(maxOfMinNum, i.min()!)
    }
    
    return maxOfMaxNum * maxOfMinNum
}