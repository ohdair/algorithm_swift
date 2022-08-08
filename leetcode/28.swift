// https://leetcode.com/problems/implement-strstr/
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 }
        if !haystack.contains(needle) { return -1 }
        
        var index = 0
        var hs = haystack 
        while !hs.hasPrefix(needle) { 
            index += 1
            hs = String(hs.dropFirst()) 
        }
        return index
    }
}