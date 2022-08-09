func Solution(_ input: String) -> Int {
    var result: Int = 0
    for c in input {
        if let num = Int("\(c)") {
            result = result * 10 + num
        }
    }
    return result
}
print("TEST is\n-----------------------");
print("CASE01 : " + String(Solution("g0en2T0s8eSoft")));
print("RESULT : 208\n");
print("CASE02 : " + String(Solution("tge0a1h205er")));
print("RESULT : 1205\n");
print("CASE03 : " + String(Solution("ABB0CCC0DDD7DE2EE9E00E8")));
print("RESULT : 729008");