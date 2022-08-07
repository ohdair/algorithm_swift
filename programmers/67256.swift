// https://school.programmers.co.kr/learn/courses/30/lessons/67256
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var ret:String = ""
    var datas:[[Int]] = [[3, 1]]
    var leftHand: [Int] = [3, 0]
    var rightHand: [Int] = [3, 2]
    for i in 1...9 {
        datas.append([(i - 1) / 3, (i - 1) % 3])
    }
    func distance(_ N: inout [Int], _ L: inout [Int], _ R: inout [Int]) -> String {
        let leftD:Int = abs(N[0] - L[0]) + abs(N[1] - L[1])
        let rightD:Int = abs(N[0] - R[0]) + abs(N[1] - R[1])
        if leftD == rightD && hand == "right" {
            R = N
            return "R"
        } else if leftD == rightD && hand == "left" {
            L = N
            return "L"
        } else if leftD > rightD {
            R = N
            return "R"
        }
        L = N
        return "L"
    }
    for number in numbers {
        if number % 3 == 1 {
            leftHand = datas[number]
            ret += "L"
        } else if number != 0 && number % 3 == 0 {
            rightHand = datas[number]
            ret += "R"
        } else {
            ret += distance(&datas[number], &leftHand, &rightHand)
        } 
    }
    return ret
}