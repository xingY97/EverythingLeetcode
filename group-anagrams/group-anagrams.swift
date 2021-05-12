class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [[String]] ()
        var dict = [String:[String]]()
        for i in 0..<strs.count {
            let word = String(strs[i].sorted())
            if let _ = dict[word] {
                dict[word]!.append(strs[i])
            } else {
                dict[word] = [strs[i]]
            }
        }
        for value in dict.values {
            result.append(value)
        }
        return result
    }
}