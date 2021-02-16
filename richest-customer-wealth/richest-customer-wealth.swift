class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        
        var maxWealth = 0
        for customer in accounts {
            var currentWealth = 0
            for value in customer {
                currentWealth += value
            }
            maxWealth = max(currentWealth, maxWealth)
        }
        return maxWealth
    }
}