import Foundation
// Array stores values of same type in an order.
// Immutable (let, and similar to array) and mutable (var and similar to lists)
let arr : Array <Int> = [0,1,2,3,4,5]
let arr2 : [Int] = [222, 2222]
print(arr2)

for num in arr {
    if let val = arr.firstIndex(of:num) {
        print("number is \(num) and index is \(val))")
    }
}

arr2.forEach { value in 
    if let val = arr2.firstIndex(of: value){
        print("number is \(value) and index is \(val))")
    }
}

var mutaleArr = [9,8,7,6,5]
mutaleArr.append(4)

mutaleArr.insert(11 , at: 2)
print(mutaleArr)
mutaleArr.remove(at:1)
print(mutaleArr[1])

// Sets : unordered storage of elements without any repetition

let set : Set<Int> = [0,1,2,3,45,1]
print(set)

for num in set {
    print(num)
}
set.forEach {value in 
    print(value)
}



