import UIKit

class Solution {
    func isPalindrome(_ y: Int) -> Bool {
        let x = String(y)
        return x == String(x.reversed())
    }
}

let s = Solution()
s.isPalindrome(-212)
