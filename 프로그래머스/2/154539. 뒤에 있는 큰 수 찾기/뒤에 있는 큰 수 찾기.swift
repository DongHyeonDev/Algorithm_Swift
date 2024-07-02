import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)
    var stack: [(Int, Int)] = [(0, numbers[0])] // 인덱스를 같이 저장하기 위해 튜플 형태로 저장
    
    for i in 1..<numbers.count {
        // stack이 비어있지 않을때까지 반복
        while !stack.isEmpty {
            // stack의 마지막 value가 기준값보다 크다면 break 
            if stack.last!.1 >= numbers[i] { break }
            // stack의 마지막원소를 지우고 해당 인덱스에 큰 수 할당
            result[stack.removeLast().0] = numbers[i]
        }
        // stack에 현재 기준값 저장
        stack.append((i, numbers[i]))
    }
    
    return result
}