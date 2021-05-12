final class Solution {
    func twoSumLessThanK(_ A: [Int], _ K: Int) -> Int {
        var A = A.sorted()
        var l = 0
        var r = A.count - 1
        var maxSum = -1
        print(A)
        while l < r {
            if A[l] + A[r] < K {
                maxSum = max(A[l] + A[r], maxSum)
                l += 1
            } else {
                r -= 1
            }
        }
        return maxSum
    }
}