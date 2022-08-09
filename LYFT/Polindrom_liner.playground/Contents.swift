import UIKit

func isPalindrome(text: String) -> Bool {
    let list = Array(text)
    
    for i in 0..<list.count / 2 {
        if list[i] != list[list.count - i - 1]{
            return false
        }
    }
    return true
}

isPalindrome(text: "abba")

