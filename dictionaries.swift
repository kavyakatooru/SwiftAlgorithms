import Foundation

var dict = Dictionary<Int, String>()
// = [Int, String]()
dict[2] = "Kavya"
dict[1] = "Katooru"
print(dict.values) // array of all values
print(dict[2])

for (key,value) in dict{
    print("Key is \(key) and value is \(value)")
}
for key in dict.keys {
    print(key)
}
dict[2] = nil // or dict.removeValue(forKey: 2)
print(dict.keys)
dict.removeAll()
print(dict)
// Heterogenous dict
var dict2 = [AnyHashable : Any]()

dict2["kav"] = "Katooru"
dict2[1] = 2
print(dict2[1]) 
let piWrapped = AnyHashable(2)
print(piWrapped)
if let unwrappedPi = piWrapped.base as? String {
    print(unwrappedPi)
}