func Solution(_ input: Array<String>) -> Int {
    var data = [Set<Character>]()
    var result: Int = 0
    for i in input {
        data.append(Set(i))
    }
    for i in 0..<data.count - 1 {
        for j in i..<data.count {
            if data[i].intersection(data[j]).isEmpty {
                result = max(result, input[i].count * input[j].count)
            }
        }
    }
    return result
}

let string1 = ["skudy", "kstue", "time", "back", "good"];
let string2 = ["kk", "k", "kkk", "kkkkk", "kkkk"];
let string3 = ["kk", "k", "kkk", "kkkkk", "a778"];

print("TEST is\n-----------------------");
print("CASE01 :", Solution(string1));
print("RESULT : 20");
print("CASE02 :", Solution(string2));
print("RESULT : 0");
print("CASE03 :", Solution(string3));
print("RESULT : 20");