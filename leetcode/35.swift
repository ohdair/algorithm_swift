// https://leetcode.com/problems/search-insert-position/
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let ret = nums.firstIndex(of: target) {
            return ret
        }
        var ret = -1
        for i in nums.indices {
            guard nums[i] < target else {
                ret = i
                break
            }
        }
        return ret == -1 ? nums.count : ret
    }
}

// log(n) && sorted nums -> 이분탐색