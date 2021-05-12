
class NumArray {
    private var nums: [Int]
    init(_ nums: [Int]) {
        var prefixSum = Array(repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            prefixSum[i] = nums[i]
            if (i > 0) {
                prefixSum[i] += prefixSum[i - 1]
            }
        }
        self.nums = prefixSum
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        var sum = nums[j]
        if i > 0 {
            sum -= nums[i - 1]
        }
        return sum
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */