class Solution {
    func totalNQueens(_ n: Int) -> Int {
        var ret: Int = 0
        
        func backtrack(_ path: [Int]) {
            if path.count == n { ret += 1 }
            
            var path: [Int] = path
            var available: [Int] = []
            for i in 0..<n { available.append(i) }
            for (i, val) in path.enumerated() {
                if let index = available.firstIndex(of: val) {
                    available.remove(at: index)
                }
                
                if let index = available.firstIndex(of: path.count - i + val) {
                    available.remove(at: index)
                }
                
                if let index = available.firstIndex(of: val - path.count + i) {
                    available.remove(at: index)
                }
            }
            
            for row in 0..<n {
                if available.contains(row) == false { continue }
                
                path.append(row)
                backtrack(path)
                path.removeLast()
            }
        }
        
        backtrack([])
        
        return ret
    }
}