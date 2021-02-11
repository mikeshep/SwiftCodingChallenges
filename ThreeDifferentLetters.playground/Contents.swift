import Foundation

func threeDifferentLetters(s1: String, s2: String)  -> Bool {
  guard s1.count == s2.count else { return false }
  var strike = 0
  for (c1, c2) in zip(s1, s2) {
    if c1 != c2 {
      strike += 1
      if strike == 4 { return false }
    }
  }
  return true
}

func challenge11(first: String, second: String) -> Bool {
  guard first.count == second.count else { return false }

  let firstArray = Array(first)
  let secondArray = Array(second)
  var differences = 0

  for (index, letter) in firstArray.enumerated() {
    if secondArray[index] != letter {
      differences += 1
      

      if differences == 4 {
        return false
      }
    }
  }

  return true
}
assert(threeDifferentLetters(s1: "Clamp", s2: "Cramp") == true, "threeDifferentLetters failed")
assert(threeDifferentLetters(s1: "Clamp", s2: "Crams") == true, "threeDifferentLetters failed")
assert(threeDifferentLetters(s1: "Clamp", s2: "Grams") == true, "threeDifferentLetters failed")
assert(threeDifferentLetters(s1: "Clamp", s2: "Grans") == false, "threeDifferentLetters failed")
assert(threeDifferentLetters(s1: "Clamp", s2: "Cramp") == true, "threeDifferentLetters failed")
assert(threeDifferentLetters(s1: "Clamp", s2: "Clam") == false, "threeDifferentLetters failed")
assert(threeDifferentLetters(s1: "clamp", s2: "maple") == false, "threeDifferentLetters failed")

