// https://leetcode.com/problems/sqrtx/
class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x != 0 else { return 0 }
        var left = 1
        var right = (x + 1) / 2
        var ret = 0
        
        while left <= right {
            var mid = left + (right-left)/2
            if mid * mid <= x {
                ret = mid
                left = mid + 1
            } else if mid * mid > x {
                right = mid - 1
            }
        }
        return ret
    }
}