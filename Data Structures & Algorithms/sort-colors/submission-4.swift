class Solution {
    func sortColors(_ nums: inout [Int]) {
        var numTofrequencyMap = Array(repeating: 0, count: 3)
        for num in nums {
            numTofrequencyMap[num] += 1
        }

        var resultIndex = 0
        for num in 0..<numTofrequencyMap.count {
            for _ in 0..<numTofrequencyMap[num] {
                nums[resultIndex] = num
                resultIndex += 1
            }
        }
    }
}
