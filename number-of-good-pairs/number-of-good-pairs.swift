class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        
        var count = 0
        for (i , a) in nums.enumerated() {
            for (j , b) in nums.enumerated(){
                if a == b && i < j {
                    count += 1
                }
            }
        }
        return count
    }
}