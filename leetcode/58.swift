// https://leetcode.com/problems/length-of-last-word/
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        return s.split(separator: " ").last!.count
    }
}