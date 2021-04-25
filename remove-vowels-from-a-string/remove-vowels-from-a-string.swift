class Solution {
    func removeVowels(_ s: String) -> String {
        //first specifi vowels useing set -> a colelction of unique elements
        let vowel: Set<Character> = ["a", "e", "i", "o", "u"]
        
        var resultString = s
        //use $0 in a closure to check the element within the strign is true vowel or not
        resultString.removeAll(where: {vowel.contains($0) })
        
        return resultString
        
    }
}