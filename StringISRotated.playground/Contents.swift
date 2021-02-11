import Foundation

//func isRotated(inputA: String, inputB: String) -> Bool {
//  guard
//    let firstA = inputA.first,
//    let firstIndexAInB = inputB.firstIndex(of: firstA) else { return false }
//  let firstString = inputB[firstIndexAInB..<inputB.endIndex]
//  let secondString = inputB[inputB.startIndex..<firstIndexAInB]
//  return "\(firstString)\(secondString)" == inputA
//}

func isRotated(inputA: String, inputB: String) -> Bool {
  guard inputA.count == inputB.count else { return false }
  let combined = inputA + inputA
  return combined.contains(inputB)
}

assert(isRotated(inputA: "abcde", inputB: "eabcd") == true, "isRotated failed")
assert(isRotated(inputA: "abcde", inputB: "cdeab") == true, "isRotated failed")
assert(isRotated(inputA: "abcde", inputB: "abced") == false, "isRotated failed")
assert(isRotated(inputA: "abc", inputB: "a") == false, "isRotated failed")
assert(isRotated(inputA: "ab", inputB: "ba") == true, "isRotated failed")
assert(isRotated(inputA: "abc", inputB: "cab") == true, "isRotated failed")
assert(isRotated(inputA: "abc", inputB: "bca") == true, "isRotated failed")
assert(isRotated(inputA: "a", inputB: "a") == true, "isRotated failed")
