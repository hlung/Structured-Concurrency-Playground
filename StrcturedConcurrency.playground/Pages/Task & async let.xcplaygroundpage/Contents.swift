import UIKit

print("--- Task ---")

Task {
  await asyncPrint("A")
  print("B")
  await asyncPrint("C")
  print("D")
  print("done")
}
// prints "A B C D"

sleep(1)

print("--- async let ---")

Task {
  // You will see that these appear in random order
  async let a: () = asyncPrint("A")
  async let b: () = asyncPrint("B")
  async let c: () = asyncPrint("C")
  async let d: () = asyncPrint("D")
  async let e: () = asyncPrint("E")
  async let f: () = asyncPrint("F")

  await (a, b, c, d, e, f) // YOU SHALL NOT PASS!!!

  print("done")
}
