import Foundation

// Queue implementation
protocol Queueable {
    associatedtype Element
    mutating func enqueue(_ element: Element)
    func peek() -> Element?
    mutating func dequeue() -> Element?
    mutating func removeAll()
}

struct Queue<T>: Queueable {
    typealias Element = T
    fileprivate var elements = [Element]()
    mutating func enqueue(_ element : Element){
        elements.append(element)
    }
    func peek() -> Element? {
        return elements.first
    }
    mutating func dequeue() -> Element? {
        guard elements.isEmpty == false else{
            return nil
        }+
        return elements.removeFirst()
    }
    mutating func removeAll() {
        elements.removeAll()
    }
}

extension Queue : CustomStringConvertible {
    var description : String {
        return "\(elements)"
    }
}
var queue = Queue<Int>()
queue.enqueue(0)
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)
print(queue.description)
print(queue.peek() ?? "Empty")
print(queue.dequeue() ?? "Empty")
print(queue.dequeue() ?? "Empty")
print(queue)
print(queue.removeAll())








