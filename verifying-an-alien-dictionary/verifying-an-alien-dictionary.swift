
class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        var map:[Character:Int] = [:]
        let arr = Array(order)
        for i in 0..<order.count{
            map[arr[i]] = i
        }
        for j in 1..<words.count{
            let prev = Array(words[j-1])
            let curr = Array(words[j])
            let minVal = min(prev.count, curr.count)
            var found = false
            for k in 0..<minVal{
                let item1 = prev[k]
                let item2 = curr[k]
                if item1 == item2 { continue }
                if map[item1]! > map[item2]!{
                    return false
                }else{
                    found = true
                    break
                }
            }
            if (!found && prev.count > curr.count){
                return false;
            }
        }
        
        return true
    }
}