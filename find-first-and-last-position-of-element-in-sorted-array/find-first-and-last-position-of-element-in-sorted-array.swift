final class Solution {
    // O(log(n)) time | O(1) space
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let count = nums.count
        var left = 0, right = count-1
        // We do regular binary search to find an index of our target
        while left <= right {
            var mid = (right + left) / 2
            if target == nums[mid] {
                return checkForAdjacents(in: nums, at: mid) // when we find an index, we check for adjacent elements
            }
            else if target > nums[mid] { left = mid + 1 }
            else { right = mid - 1 }
        }
        
        return [-1, -1]
    }
    // O(n) time | O(1) space
    func checkForAdjacents(in nums: [Int], at index: Int) -> [Int] {
        let count = nums.count, target = nums[index]
        var answer = [index, index]
        var left = index-1, right = index+1
        
        while left >= 0 && nums[left] == target { // we keep updating our left index as long as we satisfy our conditions
            answer[0] = left; left -= 1
        }
        while right < count && nums[right] == target { // we keep updating our right index as long as we satisfy our conditions
            answer[1] = right; right += 1
        }

        return answer
    }
    
}