// https://leetcode.com/problems/longest-substring-without-repeating-characters/
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let str = Array(s.unicodeScalars)

        var maxCount = 1
        var startIndex = 0

        guard str.count > 0 else {
          return 0
        }

        guard str.count > 1 else {
          return 1
        }

        for index in 1..<str.count {
          if let repIndex = str[startIndex..<index].firstIndex(where: { $0 == str[index] }) {
            maxCount = max(maxCount, index - startIndex)
            startIndex = repIndex + 1
          }
        }

        maxCount = max(maxCount, str.count - startIndex)

        return maxCount
    }
}