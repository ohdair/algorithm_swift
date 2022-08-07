// https://leetcode.com/problems/palindrome-number/
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let stringInt:String = String(x)
        var start = stringInt.startIndex
        var end = stringInt.index(before: stringInt.endIndex)
        while start < end {
            if stringInt[start] != stringInt[end] {
                return false
            }    
            start = stringInt.index(after: start)
            end = stringInt.index(before: end)
        } 
        return true
    }
}