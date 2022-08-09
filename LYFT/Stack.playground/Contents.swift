import Foundation

// Last in first out
struct StringStack {
    private var array: [String] = []
    
    func peek() -> String {
    guard let topElement = array.first else { fatalError("The stack is empty") }
    return topElement
    }
    
    mutating func pop() -> String {
        array.removeFirst()
    }
    
    mutating func push(_ element: String) {
        array.insert(element, at: 0)
    }
}

var nameStack: StringStack = .init()

nameStack.push("Jo")
nameStack.push("Boby")

