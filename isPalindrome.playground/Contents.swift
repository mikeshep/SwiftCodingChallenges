import Foundation

func isPalindrome(input: String) -> Bool {
  let lowercased = input.lowercased()
  return String(lowercased.reversed()) == lowercased
  
}



assert(isPalindrome(input: "rotator") == true, "isPalindrome failed")
assert(isPalindrome(input: "Rats live on no evil star") == true, "isPalindrome failed")
assert(isPalindrome(input: "Never odd or even") == false, "isPalindrome failed")
assert(isPalindrome(input: "Hello, world") == false, "isPalindrome  failed")
