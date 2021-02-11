import Foundation

func isPangram(s: String) -> Bool {
  let letters = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz")
  let set = Set(s.replacingOccurrences(of: " ", with: "").lowercased())
  let other = CharacterSet(charactersIn: String(set))
  return letters.symmetricDifference(other).isEmpty
}

func challenge9(input: String) -> Bool {
    let set = Set(input.lowercased())
    let letters = set.filter { $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

assert(isPangram(s: "The quick brown fox jumps over the lazy dog") == true, "isPangram failed")
assert(isPangram(s: "The quick brown fox jumped over the lazy dog") == false, "isPangram failed")
