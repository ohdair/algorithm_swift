// https://leetcode.com/problems/binary-tree-inorder-traversal/
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

 // 중위 탐색 (inorder traversal)
class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var result = [Int](), array = [TreeNode](), head = root
        while head != nil || !(array.isEmpty) {
            switch head {
            case .some(let node):
                array.append(node)
                head = node.left
            default:
                let prev = array.removeLast()
                result.append(prev.val)
                head = prev.right
            }
        }
        return result
    }
}