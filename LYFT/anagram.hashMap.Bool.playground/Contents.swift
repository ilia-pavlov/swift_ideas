// big O Notation

// how fast run time?
// how much space was taken?

// 1.Linear time or O(n) not bad
// 2.Constant time or O(1 ) good
// 3.Logarithmic time or O(log n) good
// 4.Quadratic time or O(nˆ2) has nested loop

import Foundation

func intersection(_ nums1: [Int], _ nums2: [Int]) -> Bool {
    var hasA = [Int: Bool]()
    for a in nums1 {
      hasA[a] = true
      }
    for b in nums2 {
      if hasA[b] == true {
        return true
        }
    }
    return false
  }

 let nums1 = [2,3,2,1]
 let nums2 = [2,2]

intersection(nums1, nums2)
