class Solution {
    func reverseVowels(_ s: String) -> String {
    //Voewls = a e i o u
    //store string into array.
    // go through the string, to check if each element is a voewl
        
    let vowels = Set("aeiouAEIOU")
        
    var arr = Array(s)
        
    var i = 0 //first index 
    var j = s.count - 1 //last index
        
    while i < j {
        if vowels.contains(arr[i]) && vowels.contains(arr[j]) {
            arr.swapAt(i ,j) // if contains vowels, swap postion
            
            i += 1
            j -= 1
        }
        else if !vowels.contains(arr[i]) {
            i += 1
        }
        else if !vowels.contains(arr[j]) {
            j -= 1
        }
    }
    return String(arr)
        
    
}
}