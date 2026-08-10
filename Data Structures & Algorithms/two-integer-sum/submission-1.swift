class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var previousMap = Dictionary<Int, Int>()
        
        for (i, num) in nums.enumerated() {
            let diff = target - num
            if let diffIndex = previousMap[diff] {
                return [diffIndex, i]
            } else {
                previousMap[num] = i
            }
        }

        return []
    }
}
