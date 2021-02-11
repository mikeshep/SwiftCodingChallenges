import Foundation


func removeDuplicateLetters(from string: String) -> String {
  let array = string.map { $0 }
  return   NSOrderedSet(array: array).reduce("") { (result, c) -> String in
    guard let c = c as? String.Element else { return "" }
    return result + "\(c)"
  }
}

func challenge6c(string: String) -> String {
  var used = [Character: Bool]()
  let result = string.filter {
      used.updateValue(true, forKey: $0) == nil
  }
  return String(result)
}

print(removeDuplicateLetters(from: "wombat"))//
print(removeDuplicateLetters(from: "hello"))
print(removeDuplicateLetters(from: "Mississippi"))


//wombat
//helo
//Misp









//
//assert("The rain in Spain".characterCount(character: "a") == 2, "fuzzyContains failed")
//assert("Mississippi".characterCount(character: "i") == 4, "fuzzyContains failed")
//assert("Hacking with Swift".characterCount(character: "i") == 3, "fuzzyContains failed")
