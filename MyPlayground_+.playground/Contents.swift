
import Foundation

//
//// you can write to stdout for debugging purposes, e.g.
//// print("this is a debug message")
//
//public func solution(_ A : inout [Int]) -> Int {
//  return A.reduce([]) { (result, next) -> [Int] in
//    guard !result.contains(next) else { return  result }
//    return result + [next]
//  }.count
//}
//
//func same(A: [Int], i: Int, res: [Int]) -> [Int] {
//  if A.count > i + 1 && A[i] == A[i + 1]  {
//    return same(A: A, i: i + 1, res: res + [A[i]])
//  } else {
//    return [A[i]] + res
//  }
//}
//
//var A = [1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,6,7,8,9,11,12,23,23,23]
//same(A: A, i: 1, res: [])
//solution(&A)
////[1,1,2,2,2,3,3]

public func solution(_ A : inout [Int]) -> Int {
  A.sort()
  let n = A.count - 1
  let max1 = [A[0],A[1],A[n]].reduce(1) { $0*$1 }
  let max2 = A[n-2...n].reduce(1) { $0*$1 }
  return max2 > max1 ? max2: max1
}

var a1 = [-3, 1, 2, -2, 5, 6]
solution(&a1)
