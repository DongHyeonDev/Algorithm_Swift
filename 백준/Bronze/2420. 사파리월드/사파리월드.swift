import Foundation

// 입력 받기
if let input = readLine() {
    // 입력 문자열을 공백 기준으로 나누고 정수로 변환
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    if numbers.count == 2 {
        let n = numbers[0]
        let m = numbers[1]
        
        // 두 수 차의 절대값
        print(abs(n - m))
    } else {
        print("두 개의 정수를 입력해주세요.")
    }
} else {
    print("입력이 잘못되었습니다.")
}