import Foundation


func vowelsConsonantsCount(s: String) -> (Int, Int) {
  let vowels = "aeiou"
  let consonants = "bcdfghjklmnpqrstvwxyz"
  let m = s.lowercased().reduce((0,0)) { (result, c) -> (Int, Int) in
    if vowels.contains(c) {
      return (result.0 + 1, result.1)
    }else if consonants.contains(c) {
      return (result.0, result.1 + 1)
    } else {
      return (result.0, result.1)
    }
  }
  return m
}


assert(vowelsConsonantsCount(s: "Swift Coding Challenges") == (6, 15), "isPangram failed")
assert(vowelsConsonantsCount(s: "Mississippi") == (4, 7), "isPangram failed")
assert(vowelsConsonantsCount(s: "a") == (1, 0), "isPangram failed")
