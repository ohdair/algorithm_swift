// https://leetcode.com/problems/container-with-most-water/
func maxArea(_ height: [Int]) -> Int {
    var start: Int = 0
    var end: Int = height.count - 1
    var abs: Int = 0

    while start < end {
        abs = max(abs, min(height(start), height(end)) * (end - start))
        if height(start) < height(end) { start += 1 } else { end -= 1 }
    }

    return abs
}