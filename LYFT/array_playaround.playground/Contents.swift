import UIKit

var greeting = "Hello"
var heying = ", playground"

let list1 = Array(greeting)
let list2 = Array(heying)
var list3 = [String]()

let temp = list1 + list2


//print(list[2])

// print(list)
for i in list1 {
    if list2.contains(i) {
        list3.append(String(i))
    }
}
//print(list3)

//print(list1[1])

for j in 0..<list1.count {
    print(list1[j])
}
