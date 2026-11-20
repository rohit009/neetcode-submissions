class Solution {
    func groupAnagrams(_ inputStrings: [String]) -> [[String]] {
        var dictionary = Dictionary<[Int], [String]>()

        for input in inputStrings {
            var charFrequencyArray = Array(repeating: 0, count: 26)
            for char in Array(input) {
                if let charAscii = char.asciiValue, let firstAscii = Character("a").asciiValue {
                    charFrequencyArray[Int(charAscii - firstAscii)] += 1
                }
            }

            if var currentAnagrams = dictionary[charFrequencyArray] {
                currentAnagrams.append(input)
                dictionary[charFrequencyArray] = currentAnagrams
            } else {
                dictionary[charFrequencyArray] = [input]
            }
        }

        return Array(dictionary.values)
    }
}

