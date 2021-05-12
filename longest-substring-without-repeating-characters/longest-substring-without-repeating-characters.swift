class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let count =  s.count
        guard count > 1 else {
            return count
        }
        var right = 0
        var left = 0
        var charactersMap = [Character: Int]()
        var result = 1
        
        for c in s {
            if let index = charactersMap[c] {
                result = max(result, right - left)
                left = max(index, left)
            }
            right += 1
            charactersMap[c] = right
        }
        return  max(result, right - left)
    }   
}
