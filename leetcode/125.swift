// https://leetcode.com/problems/valid-palindrome/

extension String {
        var alpharic: String {
            return self.components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
        }
    }

class Solution {
    
    func isPalindrome(_ s: String) -> Bool {
        var s = s
        s = s.alpharic.uppercased()
        var reverseS = String(s.reversed())
        return s == reverseS
    }
}

/*
class Solution {
    // - Complexity:
    //   - time: O(n), where n is the length of the *s*.
    //   - space: O(1), only constant space is used.

    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else { return true }

        let s = Array(s)
        var i = 0
        var j = s.count - 1

        while i < j {
            if !s[i].isLetter, !s[i].isNumber { i += 1; continue }

            if !s[j].isLetter, !s[j].isNumber { j -= 1; continue }

            guard s[i].lowercased() == s[j].lowercased() else { return false }
            i += 1
            j -= 1
        }

        return true
    }
}
*/