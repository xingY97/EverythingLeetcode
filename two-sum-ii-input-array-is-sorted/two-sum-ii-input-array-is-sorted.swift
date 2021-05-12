class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var low = 0
    var high = numbers.count - 1

    while low < high {
        let sum = numbers[low] + numbers[high]
        if sum == target { return [low + 1, high + 1] }
        else if sum < target { low += 1 }
        else { high -= 1}
    }

    return []
}
}