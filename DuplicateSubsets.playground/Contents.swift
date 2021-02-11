import Foundation

class Solution {
//  func subsetsWithDup(_ nums: [Int]) -> Set<[Int]> {
//    var combs: [[Int]] = nums.map { [$0] }
//    let counts = NSCountedSet(array: nums)
//    var last = [[Int]]()
//    last = combs
//    for _ in 1..<nums.count {
//      var lastCurrentIter = [[Int]]()
//      for (i,n) in nums.enumerated() {
//        var comb = [[Int]]()
//        last.enumerated().filter { (j, m) -> Bool in
//          guard i != j || i < j else { return false }
//          if NSCountedSet(array: m).count(for: n) < counts.count(for: n) {
//            comb.append([n] + m)
//            return true
//          }
//          return false
//        }
//        lastCurrentIter.append(contentsOf: comb)
//      }
//      last = Array(Set(lastCurrentIter))
//      combs.append(contentsOf: lastCurrentIter)
//    }
//    return Set(combs)
//  }
  
  func subsetsWithDup(_ nums: [Int]) -> Set<[Int]> {
         var ans = [[Int]]()
         ans.append([Int]())
         let sorted = nums.sorted()
         var size = ans.count
         for i in 0..<sorted.count {
             let start = (i > 0 && sorted[i] == sorted[i - 1]) ? size : 0
             size = ans.count
             var temp = [[Int]]()
             for j in start..<ans.count {
                 var arr = ans[j]
                 arr.append(sorted[i])
                 temp.append(arr)
             }
             ans += temp
         }
         return Set(ans)
  }
//
  // dfs 100% 19ms
//  func subsetsWithDup(_ nums: [Int]) -> Set<[Int]> {
//    var ans = [[Int]]()
//    print("line:\(#line), backtracking arr:\([]), ans:\(ans)")
//    backtracking(nums.sorted(), 0, [Int](), &ans)
//    return Set(ans)
//  }
  
  
  func backtracking(_ nums: [Int], _ start: Int, _ arr: [Int], _ ans: inout [[Int]]) {
    print("line:\(#line), arr:\(arr), ans:\(ans), start: \(start)")
    ans.append(arr)
    
    for i in start..<nums.count {
      if i > start && nums[i] == nums[i - 1] {
        print("continue")
        continue
      }
      var temp = arr
      temp.append(nums[i])
      print("line:\(#line), temp:\(temp), arr:\(arr), i: \(i)")
      backtracking(nums, i + 1, temp, &ans)
    }
    print("for end start\(start)")
  }
}

let solution = Solution()
//
//let s123 = solution.subsetsWithDup([1,2,3])
//let testS123 = Set([[1,2,3],[1,2],[1,3],[2,3],[1],[2],[3]])
//assert(s123.isDisjoint(with: testS123) == false, "subsetsWithDup failed")
//
//let s122 = solution.subsetsWithDup([1,2,2])
//let testS122 = Set([[2],[1],[1,2,2],[2,2],[1,2]])
//assert(s122.isDisjoint(with: testS122) == false, "subsetsWithDup failed")
//
//let s1234 = solution.subsetsWithDup([1,2,3,4])
//let test1234 = Set([[1],[2],[3],[4],[1,2],[1,3],[1,4],[2,3],[2,4],[3,4],[1,2,3],[1,2,4],[1,3,4],[3,4,2],[1,2,3,4]])
//assert(s1234.isDisjoint(with: test1234) == false, "subsetsWithDup failed")
//
//

let s12345 = solution.subsetsWithDup([5,6])
print(s12345)
