import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var ret:String = ""
    var datas:[[Int]] = [[3, 1]]
    var leftHand: [Int] = [3, 0]
    var rightHand: [Int] = [3, 2]
    for i in 1...9 {
        datas.append([(i - 1) / 3, (i - 1) % 3])
    }
    func distance(_ N:[Int], _ L:[Int], _ R:[Int]) -> String {
        let leftD:Int = abs(N[0] - L[0]) + abs(N[1] - L[1])
        let rightD:Int = abs(N[0] - R[0]) + abs(N[1] - R[1])
        if leftD == rightD && hand == "right" {
            return "R"
        } else if leftD == rightD && hand == "left" {
            return "L"
        } else if leftD > rightD {
            return "R"
        }
        return "L"
    }
    for number in numbers {
        if number == 2 || number == 5 || number == 8 || number == 0 {
            let tmp:String = distance(datas[number], leftHand, rightHand)
            if tmp == "L" {
                leftHand = datas[number]
            } else {
                rightHand = datas[number]
            }
            ret += tmp
        } else if number == 1 || number == 4 || number == 7 {
            leftHand = datas[number]
            ret += "L"
        } else {
            rightHand = datas[number]
            ret += "R"
        }
    }
    return ret
}