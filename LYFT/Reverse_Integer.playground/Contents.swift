import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        let isNagative = x < 0
        
        if isNagative {
            x = abs(x)
        }
        
        var revers = 0
        var lastDigit = 0
        
        while x >= 1 {
            lastDigit = x % 10
            revers = revers * 10 + lastDigit
            x = x/10
            if (revers < 0 && x != 0 && Int(Int32.min) / 10 > revers ) { return 0 }
            if (revers > 0 && x != 0 && Int(Int32.max) / 10 < revers ) { return 0 }
        }
        return isNagative ? revers * -1 : revers
    }
}
