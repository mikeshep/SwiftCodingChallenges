import Foundation

extension String {
  
  func fuzzyContains(other: String) -> Bool {
    return range(of: other, options: .caseInsensitive) != nil
  }
}

assert("Hello, world".fuzzyContains(other: "Hello") == true, "fuzzyContains failed")
assert("Hello, world".fuzzyContains(other: "WORLD") == true, "fuzzyContains failed")
assert("Hello, world".fuzzyContains(other: "Goodbye") == false, "fuzzyContains failed")
