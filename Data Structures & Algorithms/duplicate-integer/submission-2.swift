class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        guard !nums.isEmpty else {
            return false
        }

        let sortedNums = nums.sorted()
        var currentNum = nums.first!
        for number in sortedNums.dropFirst() {
            if currentNum == number {
                return true
            }

            currentNum = number
        }

        return false
    }
}
