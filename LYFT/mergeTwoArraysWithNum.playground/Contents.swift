import UIKit

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
                var result = [Int]()
    
    var i = 0
    var j = 0
    
    // Merge the full length of on list
    while i < m && j < n {
        if nums1[i] <= nums2[j] {
            result.append(nums1[i])
            i += 1
        } else {
            result.append(nums2[j])
            j += 1
        }
    }
    
    // Copy remaining elements of L1
    while i < m {
        result.append(nums1[i])
        i += 1
    }

    // Copy remaining elements of L2
    while j < n {
        result.append(nums2[j])
        j += 1
    }
        nums1 = result
   }
}

let s: Solution = .init()
var nums1 = [1,2,3,0,0,0]
let m = 3
let nums2 = [2,5,6]
let n = 3
// s.merge(&nums1, m, nums2, n)
