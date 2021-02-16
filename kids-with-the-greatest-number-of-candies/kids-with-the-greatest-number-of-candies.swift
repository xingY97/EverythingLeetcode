class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        
    let MaxCandie = candies.max()!
        
        var result:[Bool] = []
        for kidCandies in candies {
            if (kidCandies + extraCandies) >= MaxCandie{
                result.append(true)
            }else {
                result.append(false)
            }
        }
        return result
}
}