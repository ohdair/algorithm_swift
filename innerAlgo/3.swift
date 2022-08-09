func Solution(_ input: String) -> String {
    var input: Array<Character> = Array(input)
    var start: Int = 0
    var end: Int = input.count - 1
    while start < end {
        if !input[start].isLetter {
            start += 1
        }
        if !input[end].isLetter {
            end -= 1
        }
        if input[start].isLetter, input[end].isLetter {
            let tmp: Character = input[start]
            input[start] = input[end]
            input[end] = tmp
            start += 1
            end -= 1
        }
    }
    return String(input)
}
print("TEST is\n-----------------------");
print("CASE01 : " + Solution("a#b!GE*T@S"));
print("RESULT : S#T!EG*b@a");
print("CASE02 : " + Solution("a#b!GTTYE*%%$#@T@S"));
print("RESULT : S#T!EYTTG*%%$#@b@a");