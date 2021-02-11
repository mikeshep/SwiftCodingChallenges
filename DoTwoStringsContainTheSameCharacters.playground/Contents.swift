import Foundation

func containSameCharacters(input1: String, input2: String) -> Bool {
  return input1.sorted() == input2.sorted()
}

assert(containSameCharacters(input1: "abca", input2: "abca") == true, "containSameCharacters failed")
assert(containSameCharacters(input1: "abc", input2: "cba") == true, "containSameCharacters failed")
assert(containSameCharacters(input1: "a1 b2", input2: "b1 a2") == true, "containSameCharacters failed")
assert(containSameCharacters(input1: "abc", input2: "abca") == false, "containSameCharacters  failed")
assert(containSameCharacters(input1: "abc", input2: "Abc") == false, "containSameCharacters  failed")
assert(containSameCharacters(input1: "abc", input2: "cbAa") == false, "containSameCharacters  failed")
assert(containSameCharacters(input1: "abcc", input2: "abca") == false, "containSameCharacters  failed")
