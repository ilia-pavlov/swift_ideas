import UIKit

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let hashTable1: Set<Int> = Set(nums1)
        let hashTable2: Set<Int> = Set(nums2)
        
        var solution = [Int]()
        for i in hashTable1 {
           if hashTable2.contains(i) {
               solution.append(i)
           }
        }
        print(solution)
        return solution
    }
}

let nums1 = [3,4,4,5,8,8]
let nums2 = [4,5,1,1,19,9]

let solution: Solution = .init()
solution.intersection(nums1, nums2)
