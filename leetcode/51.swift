// https://leetcode.com/problems/n-queens/
class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        var data: [[String]] = []
        DFS(n, 0, [], &data)
        return data
    }
    
    private func isAvailable(_ current: [Int], _ col: Int) -> Bool {
        for row in current.indices {
            if current[row] == col || abs(current[row] - col) == current.count - row {
                return false
            }
        }
        return true
    }
    
    private func transString(_ n: Int, _ arrayInt: [Int]) -> [String] {
        var ret: [String] = []
        for val in arrayInt {
            var str: String = ""
            for i in 0..<n { str += i == val ? "Q" : "." }
            ret.append(str)
        }
        return ret
    }
    
    private func DFS(_ n: Int, _ row: Int, _ current: [Int], _ final: inout [[String]]) {
        var current: [Int] = current
        if n == row {
            final.append(transString(n, current))
            return 
        }
        for col: Int in 0..<n {
            if isAvailable(current, col) {
                current.append(col)
                DFS(n, row + 1, current, &final)
                current.removeLast()
            }
        }
    }
}


// class Solution {
//     func solveNQueens(_ n: Int) -> [[String]] {
//         var res: [[Int]] = []
        
        
//         func backtarck(_ path: [Int]) {
//             if path.count == n { res.append(path)  }
//             var path = path
//             var available: [Int] = []
//             for i in 0..<n { available.append(i) }
            
//             // enumverated 맵과 같이 사용
//             // path.count   : 놓여야 하는 퀸의 y 값 
//             // val          : 기존에 놓인 퀸의 x 값
//             // i            : 기존에 놓인 퀸의 y 값
//             for (i, val) in path.enumerated() {
//                 if let index = available.firstIndex(of: val - path.count + i) {
//                     available.remove(at: index)
//                 }
                
//                 if let index = available.firstIndex(of: val) {
//                     available.remove(at: index)
//                 }
                
//                 if let index = available.firstIndex(of: val + path.count - i) {
//                     available.remove(at: index)
//                 }
//             }
            
//             for i in 0..<n {
//                 if available.contains(i) == false { continue }
//                 path.append(i)
//                 backtarck(path)
//                 path.remove(at: path.count - 1)
//             }
//         }
        
//         backtarck([])
        
//         return res.map({ (path: [Int]) -> [String] in
//             var res: [String] = []
//             for i in path {
//                 var string = ""
//                 for j in 0..<n { string += (i == j ? "Q" : ".") }
//                 res.append(string)
//             }
//             return res
//         })
//     }
    
// }