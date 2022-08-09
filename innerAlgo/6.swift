func Solution(_ input: String) -> Character {
    var data: Dictionary<Character, Int> = ["A": 0, "B": 0, "C": 0, "D": 0, "E": 0]
    var max: Int = 0
    var result: Character = "?"

    for c in input {
        if let _ = data[c] {
            data[c]! += 1
        }
    }
    for (key, value) in data {
        if value > max {
            result = key
            max = value
        }
    }
    return result
}

print("CASE01 :", Solution("BACBACCACCBDEDE"))
print("RESULT : C")