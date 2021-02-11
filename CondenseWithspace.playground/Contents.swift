import Foundation

func condenseWhitespace(s: String) -> String {
  return s.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
}

assert(condenseWhitespace(s: "a   b   c") == "a b c", "condenseWhitespace failed")
assert(condenseWhitespace(s: "    a") == " a", "condenseWhitespace failed")
assert(condenseWhitespace(s: "abc") == "abc", "condenseWhitespace failed")
