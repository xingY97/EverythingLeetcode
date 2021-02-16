class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        for i in 0 ..< n {
            let j = i + n
            result += [nums[i], nums[j]]
        }
        return result
    }
}