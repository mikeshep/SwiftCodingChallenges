import UIKit

var str = "Hello, playground"

struct Frequency {
  let character: String
  let count: Int
}

func isValid(s: String) -> Bool {
  if s.count == 1 { return true }
  let set = Set(s)
  var frequencies = [Frequency]()
  for character in set {
    let count = s.filter { $0 == character }.count
    let frequency = Frequency(character: "\(character)", count: count)
    frequencies.append(frequency)
  }
  let counts = frequencies.map { $0.count }.sorted()
  if counts.count == 1 { return true }
  if counts.count == 2 {
    return counts[0] == counts[1] || (counts[0] == (counts[1] - 1))
  }
  if counts.count >= 3 {
    if counts[0] != counts[counts.count-2] { return false }
    return counts[0] == counts[counts.count-1] || (counts[0] == (counts[counts.count-1] - 1))
  }
  return false
}

isValid(s: "abcc")



let TAYLOR = { (t: Int) in return -(~t) }
let tayloR = { return TAYLOR(TAYLOR($0)) }
let taylOr = { return tayloR(tayloR($0)) }
let tayLor = { return taylOr(taylOr($0)) }
let taYlor = { return tayLor(tayLor($0)) }
let tAylor = { return taYlor(taYlor($0)) }
let Taylor = { return tAylor(tAylor($0)) }
let taylor = { (t: Int) -> Int in print(UnicodeScalar(t)!, terminator: ""); return 0 }
//
//taylor (tayloR (tayLor (taylor (TAYLOR (tAylor (taylor (taYlor (tAylor (taylor (tayloR (taYlor (tAylor (taylor (taylOr (tAylor (taylor (tAylor (taylor (TAYLOR (taylOr (tAylor (Taylor (taylor (TAYLOR (taylOr (tayLor (tAylor (Taylor (taylor (tAylor (taylor (TAYLOR (taylOr (tAylor (Taylor (taylor (TAYLOR (tayloR (taylOr (taYlor (tAylor (Taylor (taylor (TAYLOR (tayloR (taylOr (tayLor (tAylor (Taylor (taylor (tAylor (taylor (TAYLOR (taylOr (taYlor (tAylor (Taylor (taylor (TAYLOR (tayloR (taylOr (tayLor (tAylor (Taylor (taylor (TAYLOR (tayLor (taYlor (Taylor (0) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )”
//
//Excerpt From: Paul Hudson. “Swift Coding Challenges.” Apple Books.
