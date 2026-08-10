class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        guard !s.isEmpty && !t.isEmpty else {
            return true
        } 

        let sChars = Array(s)
        var sFrequency = Dictionary<Character, Int>()
        for char in sChars {
            sFrequency[char] = (sFrequency[char] ?? 0) + 1
        }

        let tChars = Array(t)
        var tFrequency = Dictionary<Character, Int>()
        for char in tChars {
            tFrequency[char] = (tFrequency[char] ?? 0) + 1
        }

        guard sFrequency.count == tFrequency.count else {
            return false
        }

        for key in sFrequency.keys {
            if sFrequency[key] != tFrequency[key] {
                return false
            }
        }

        return true
    }
}
