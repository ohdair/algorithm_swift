// https://leetcode.com/problems/merge-sorted-array/
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard m != 0 else {
            nums1 = nums2
            return
        }
        nums1.removeSubrange(m..<nums1.count)
        nums1.insert(contentsOf:nums2, at: nums1.count)
        nums1.sort()
    }
}