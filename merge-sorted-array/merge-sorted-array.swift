class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        if n == 0 { return }
        if m == 0 { 
            nums1 = nums2
            return
        }
        
        // slice the part of nums1 we need
        nums1 = Array(nums1[0..<m])
        
        //use index1, index2 to record indices of each arrs; both start from end index
        var index1 = m-1, index2 = n-1
        
        // indices from right to left(large to small values), to avoid index insertion conflcts; two pointer
        while index1 >= 0, index2 >= 0 {
            while index1 >= 0, nums1[index1] > nums2[index2] { index1 -= 1 }
            if index1 == -1 { break } // when out of bound of nums1
            
            // when successfully find a right place to insert
            nums1.insert(nums2[index2], at: index1+1)
            index2 -= 1
        }
        
        // if still remains nums2, we directly combine the rest part of nums2 with nums1
        if index2 >= 0 { nums1 = Array(nums2[0...index2]) + nums1 }  
    }
}
