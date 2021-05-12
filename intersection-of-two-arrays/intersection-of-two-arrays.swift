class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

	var controller = [Int: Bool]()
	nums1.forEach({ controller[$0] = true })
	return nums2.filter({
		if let contains = controller[$0], contains {
			controller[$0] = false
			return true
		}
		return false
	})
}
}