// https://school.programmers.co.kr/learn/courses/30/lessons/86491

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var longLength:Int = 0
    var shortLength:Int = 0
    for size in sizes {
        longLength = max(size.max()!, longLength)
        shortLength = max(size.min()!, shortLength)
    }
    return longLength * shortLength
}