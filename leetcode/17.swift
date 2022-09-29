// https://leetcode.com/problems/letter-combinations-of-a-phone-number/
func letterCombinations(_ digits: String) -> [String] {
    guard !digits.isEmpty else { return [] }
    var ret: [String] = []
    
    _ = digits.map {
        if ret.isEmpty { ret = phoneNumber($0) }
        else {
            var temp: [String] = []
            for chOut in ret {
                for chIn in phoneNumber($0) {
                    print(chOut + chIn)
                    temp.append(chOut + chIn)
                }
            }
            ret = temp
        }
    }

    func phoneNumber(_ input: Character) -> [String] {
        if input == "2" {
            return ["a", "b", "c"]
        }
        if input == "3" {
            return ["d", "e", "f"]
        }
        if input == "4" {
            return ["g", "h", "i"]
        }
        if input == "5" {
            return ["j", "k", "l"]
        }
        if input == "6" {
            return ["m", "n", "o"]
        }
        if input == "7" {
            return ["p", "q", "r", "s"]
        }
        if input == "8" {
            return ["t", "u", "v"]
        }
        if input == "9" {
            return ["w", "x", "y", "z"]
        }
        return []
    }
    return ret
}