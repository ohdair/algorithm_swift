// https://leetcode.com/problems/plus-one/
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var carry = false
        for i in (0..<digits.count).reversed() {
            if (digits[i] == 9) {
                carry = true
                digits[i] = 0
                continue
            }
            carry = false
            digits[i] += 1
            break
        }
        if carry {
            digits.insert(1,at: 0)
        }
        return digits
    }
}