class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        let numsSet = Set(nums)
        
        //go through the array to the sum for the target
        for (index, value) in nums.enumerated() {
            let diff = target - value  //diff = 7
            if numsSet.contains(diff) {
                if let diffIndex = nums.firstIndex (of:diff),
                index != diffIndex {
                    return [index,diffIndex]
                }
            }
        }
        return []
    }
}