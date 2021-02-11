class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var arr : [Int] = []
        var sum = 0
        for i in nums{
            sum += i
            arr.append(sum)
        }
        return arr
    }
}