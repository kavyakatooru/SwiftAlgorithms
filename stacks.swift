import Foundation

// Stack implementation

var arr = [Int]()
arr.append(1)
arr.append(2) // push 
arr.append(3)
arr.append(4)
arr.append(5)
arr.append(6)
print(arr)
print(arr.last) // peek
print(arr.popLast()) // pop
print(arr)
var last = arr[2] // accessing from middle of array : Not a LIFO behaviour
print(last)
arr.remove(at:2) // removing from middle of array : Not a LIFO behaviour
print(arr)

// So, Array don't follow strict LIFO behaviour
// Use protocol behaviour to define the required methods for stack and implement a struct that conforms this protocol
protocol Stackable{
    associatedtype Element
    mutating func push(_ element : Element)
    func peek() -> Element?
    mutating func pop() -> Element?
    mutating func removeAll()
}

struct Stack<T> : Stackable {
    typealias Element = T
    fileprivate var elements = [Element]()

    mutating func push(_ element : Element) {
        elements.append(element)
    }

    func peek() -> Element? {
        return elements.last
    }

    mutating func pop() -> Element? {
        return elements.popLast();
    }

    mutating func removeAll() {
        elements.removeAll()
    }

}

extension Stack: CustomStringConvertible {
    var description: String {
        return "\(elements)"
    }
}
// CustomStringConvertible protocol defines the description property.

var stackInt = Stack<Int>()
stackInt.push(1)
stackInt.push(2)
stackInt.push(3)
print(stackInt.description)
print("StackInt has:", stackInt)
print("StackInt has:", stackInt.peek() ?? "Empty")
print("StackInt has:", stackInt.pop() ?? "Empty")
print("StackInt has:", stackInt.removeAll())


// Mutating is for functions that modifies the structure of our data structure.
//Class methods always modifies the class, therefore we don't use mutating for class methods
// Mutating is also used for protocal to allow structs to adopt it



