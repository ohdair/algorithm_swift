/*
   4
 5   6
7 0 1 2
*/

func search(_ nums: [Int], _ target: Int) -> Int {
    var start = 0
    var end = nums.count - 1
    
    while start <= end {
        let mid = (end - start) / 2
        guard nums[mid] != target else { return mid }
        func setR() { end = mid - 1 }
        func setL() { start = mid + 1 }
        
        if nums[mid] > nums[start] {
            nums[start] <= target && nums[mid] > target ? setR() : setL()
        } else {
            nums[mid] < target && nums[end] >= target ? setL() : setR()
        }
    }

    return -1
}

let nums = [4,5,6,7,0,1,2], target = 0

print(search(nums, target))