func Solution(_ input: String) -> Bool {
    var input: String = input
    var start: String.Index = input.startIndex
    var end: String.Index = input.index(before: input.endIndex)

    while start < end {
        let tmpS = input.index(after: start)
        let tmpE = input.index(before: end)
        if input[start] == input[end] {
            start = tmpS
            end = tmpE
            continue
        } else if input[start] == input[tmpE] {
            input.remove(at: end)
            start = tmpS
            end = tmpE
        } else if input[end] == input[tmpS] {
            input.remove(at: start)
            start = tmpS
            end = tmpE
        } else {
            return false
        }
    }
    return true
}

let string1 = "abcbdcba"; // YES
let string2 = "abcabbakcba"; // YES
let string3 = "abcdcba"; // YES
let string4 = "abcacbakcba"; // NO

print("TEST is\n-----------------------");
print("CASE01 : " + String(Solution(string1)));
print("RESULT : true");
print("CASE02 : " + String(Solution(string2)));
print("RESULT : true");
print("CASE03 : " + String(Solution(string3)));
print("RESULT : true");
print("CASE04 : " + String(Solution(string4)));
print("RESULT : false");