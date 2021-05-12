class Solution {
    func arraysIntersection(_ arr1: [Int], _ arr2: [Int], _ arr3: [Int]) -> [Int] {
        var result: [Int] = []
        var dict: [Int: Int] = [:]
        arr1.forEach { (num) in
            if let value = dict[num] {
                dict[num] = value + 1
            } else {
                dict[num] = 1
            }
        }
        
        arr2.forEach { (num) in
            if let value = dict[num] {
                dict[num] = value + 1
            } else {
                dict[num] = 1
            }
        }
        
        arr3.forEach { (num) in
            if let value = dict[num] {
                dict[num] = value + 1
            } else {
                dict[num] = 1
            }
        }
        
        dict.forEach { item in
            if item.value == 3 {
                result.append(item.key)
            }
        }
        
        return result.sorted()
    }
}