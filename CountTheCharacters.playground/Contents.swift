import Foundation

extension String {
  
  func characterCount(character: Character) -> Int {
    let modified = replacingOccurrences(of: String(character), with: "")
    return count - modified.count
  }
  
}

assert("The rain in Spain".characterCount(character: "a") == 2, "fuzzyContains failed")
assert("Mississippi".characterCount(character: "i") == 4, "fuzzyContains failed")
assert("Hacking with Swift".characterCount(character: "i") == 3, "fuzzyContains failed")
