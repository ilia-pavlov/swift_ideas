import Foundation

func doStaff(inputText: String, steps: Int) -> String {
    if steps <= 0 { return "HACK" }
    if inputText.isEmpty { return "Don't try!" }
    var result = ""
    
    let abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let inputTextList = Array(inputText)
    let abcRepo = Array(abc)
    
    for char in inputTextList {
        var changedChar: Character = " "
        if char != " " {
            let repoCharIndex = abcRepo.firstIndex(of: char)!
            let key = (steps + repoCharIndex) % 26
            changedChar = abcRepo[key]
        }
        result.append(changedChar)
    }
    print(result)
    return result
}

doStaff(inputText: "Y", steps: 2)
doStaff(inputText: "Y", steps: 1)
doStaff(inputText: "Y", steps: -1)
doStaff(inputText: "", steps: 2)
