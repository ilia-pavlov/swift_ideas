import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        var st = [Character]()
        
        for c in s {
            switch c {
                case "{", "(", "[":
                    st.append(c)
                case "}":
                    if (st.isEmpty || (st.last != "{")) {
                        return false
                    }
                    st.popLast()
                case ")":
                    if (st.isEmpty || (st.last != "(")) {
                        return false
                    }
                    st.popLast()
                case "]":
                    if (st.isEmpty || (st.last != "[")) {
                        return false
                    }
                    st.popLast()
                default:
                    print("breaking \(c)")
                }
            }
                return st.isEmpty ? true : false
    }
         
}
