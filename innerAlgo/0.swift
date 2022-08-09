func Solution(_ input: String) -> String {
    var result = String()
    var count: Int = 1
    for c in input {
        if !result.isEmpty && result.last! == c {
            count += 1
        } else {
            if count > 1 {
                result += "\(count)"
                count = 1
            }
            result += "\(c)"
        }
    }
    if count > 1 {
        result += "\(count)"
    }
    return result
}

print("TEST is\n-----------------------");
print("CASE01 : " + Solution("KKHSSSSSSSE"));
print("RESULT : K2HS7E\n");
print("CASE02 : " + Solution("KACCCHAAASSBB"));
print("RESULT : KAC3HA3S2B2\n");
print("CASE03 : " + Solution("ABBCCCDDDDEEEEE"));
print("RESULT : AB2C3D4E5");