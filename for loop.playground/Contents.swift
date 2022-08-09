import UIKit

let a = [1,2,3,4,5]
let b = [4,5,1,9,9]

var c = [Int]()

for i in a {
    if b.contains(i) {
        c.append(i)
        print(c)
    }
}
