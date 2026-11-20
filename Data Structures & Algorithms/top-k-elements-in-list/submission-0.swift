class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequencyMap = Dictionary<Int, Int>()
        for num in nums {
            frequencyMap[num, default: 0] += 1
        }

        var outputMostFrequentElements = [Int]()
        var shouldIgnoreKeys = [Int]()
        for _ in 1...k {
            var currentHighFrequencyValue = 0
            var currentHighElement = 0
            for (_, (key, value)) in frequencyMap.enumerated() {
                if shouldIgnoreKeys.contains(key) {
                    continue
                }

                if value > currentHighFrequencyValue {
                    currentHighFrequencyValue = value
                    currentHighElement = key
                }
            }

            shouldIgnoreKeys.append(currentHighElement)
            outputMostFrequentElements.append(currentHighElement)
        }

        return outputMostFrequentElements
    }
}
