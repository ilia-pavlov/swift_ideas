import Foundation

// first in first out
struct Queue<Item> {
    private var items: [Item] = []
    
    mutating func enqueue(item: Item) {
        items.append(item)
    }
    
    mutating func dequeue() -> Item {
        guard !items.isEmpty else { fatalError("The queue is empty!") }
        return items.removeFirst()
    }
    
    var head: Item {
        guard let firstItem = items.first else { fatalError("The queue is empty!") }
        return firstItem
    }
    
    var tail: Item {
        guard let lastItem = items.last else {
            fatalError("The queue is empty!") }
        return lastItem
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        let start = "Queue: "
        let end = " [HEAD]"
        let element = items
            .map { String(describing: $0)}
            .reversed()
            .joined(separator: " -> ")
        return start + element + end
    }
    
    func printQueue() {
        print(description)
    }
}

var queue: Queue<String> = .init()
queue.enqueue(item: "One")
queue.enqueue(item: "Two")
queue.enqueue(item: "Three")
queue.enqueue(item: "Four")

queue.dequeue()
queue.printQueue()
