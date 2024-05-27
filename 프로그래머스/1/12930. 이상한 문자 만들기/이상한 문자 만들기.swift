func solution(_ s:String) -> String {
    var result: [String] = []
    var count: Int = 0
    
    for letter in s {
        if count % 2 == 0 {
            result.append(String(letter.uppercased()))
        } else {
            result.append(String(letter.lowercased()))
        }
        count += 1
        if letter == " " {
            count = 0
        }
    }
    return result.joined()
}