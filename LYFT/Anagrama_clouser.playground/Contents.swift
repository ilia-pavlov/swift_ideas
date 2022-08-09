import UIKit

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let listS = Array(s).sorted { $0 > $1 }
        let listT = Array(t).sorted { $0 > $1 }
        return listS == listT
    }
}

let s = Solution()
s.isAnagram("aacc", "caca")
