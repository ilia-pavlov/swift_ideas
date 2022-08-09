import UIKit

func twoSum(nums: [Int], target: Int) -> [Int] {
    
    var map = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let j = map[target - num] {

            return [index, j]
        }
        map[num] = index
        }
        return []
    }

let nums = [2, 11, 7, 11, 15]
twoSum(nums: nums , target: 9)


//for (index, item) in nums.enumerated() {
//    print("\(item) -- and -- \(index)")
//}
