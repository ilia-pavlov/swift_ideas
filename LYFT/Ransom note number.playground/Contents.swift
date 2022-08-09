import UIKit

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let mapNote = map(ransomNote)
        let mapMagazine = map(magazine)
        
        for (key, _) in mapNote {
            if mapMagazine[key] == nil {
                return false
            }
            if mapMagazine[key]! < mapNote[key]! {
                return false
            }
        }
        return true
    }
    
    func map(_ text: String) -> [Character: Int] {
        var map = [Character: Int]()
        let list = Array(text)
        
        for char in list {
            if map[char] != nil {
                map[char] = map[char]! + 1
            } else {
                map[char] = 1
            }
        }
        return map
    }
}
