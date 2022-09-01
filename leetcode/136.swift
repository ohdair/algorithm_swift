// https://leetcode.com/problems/single-number/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var index = 1
        while index < nums.count {
            if nums[index - 1] == nums[index] {
                index += 2
            } else {
                break
            }
        }
        return nums[index - 1]
    }
}

/*
func singleNUmber(_ nums: [Int]) -> Int {
    var ans: Int = 0
    for num in nums { ans ^= nums }
    return ans
}
*/




