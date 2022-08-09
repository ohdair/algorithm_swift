// https://school.programmers.co.kr/learn/courses/30/lessons/42862
import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var result = Array(repeating: 0, count: n+2)
    for res in reserve { result[res] += 1 }
    for los in lost { result[los] -= 1 }
    for i in 1...n {
        if result[i] == 1 && result[i - 1] == -1 {
            result[i] = 0
            result[i - 1] = 0
        } else if result[i] == 1 && result[i + 1] == -1{
            result[i] = 0
            result[i + 1] = 0
        }
    }
    result.sort()
    return n - result.firstIndex(of: 0)!
}