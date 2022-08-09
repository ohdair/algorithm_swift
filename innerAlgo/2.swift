func Solution(_ input: String) -> Array<String> {
    var input: String = input
    var result: Array<String> = []

    for _ in 0..<input.count {
        result.append(input)
        input.removeFirst()
    }
    return result.sorted()
}
print("TEST is\n-----------------------");
print("CASE01 :", Solution("kseaedu"));
print("RESULT : [\"aedu\", \"du\", \"eaedu\", \"edu\", \"kseaedu\", \"seaedu\", \"u\"]");