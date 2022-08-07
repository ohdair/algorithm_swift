// https://leetcode.com/problems/zigzag-conversion/
class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard numRows > 1 else { return s }
        var rows: [[Character]] = []
        var res = ""

        for _ in 0..<numRows { rows.append([]) }

        for (i, c) in s.enumerated() {
            let index = i % (2 * numRows - 2)
            if index < numRows {
                rows[index].append(c)
            } else {
                rows[2 * numRows - index - 2].append(c)
            }
        }
        
        for row in rows {
            for c in row { res += String(c) }
        }
        
        return res
    }
}