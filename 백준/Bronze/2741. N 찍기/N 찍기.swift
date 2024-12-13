import Foundation

// 숫자 입력 받기
if let numInput = readLine(), let num = Int(numInput) {
    // 조건 확인: 1 <= num <= 100,000
    if num >= 1 && num <= 100000 {
        // 1부터 입력값 까지 출력
        for i in 1...num {
            print(i)
        }
    } else {
        print("입력은 1보다 크거나 같고 100,000보다 작거나 같은 자연수여야 합니다.")
    }
} else {
    print("자연수를 올바르게 입력해주세요.")
}