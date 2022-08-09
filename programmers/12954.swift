// https://school.programmers.co.kr/learn/courses/30/lessons/12954
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result: Array<Int64> = Array(1...Int64(n))
    return result.map{ $0 * Int64(x) }
}