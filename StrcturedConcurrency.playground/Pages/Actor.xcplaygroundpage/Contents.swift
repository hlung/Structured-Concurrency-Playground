//: [Previous](@previous)

import Foundation

//let counter = Counter()
//counter.incrementSync() // Actor-isolated instance method 'incrementSync()' can not be referenced from a non-isolated context

//Task {
//  for _ in 0..<5 {
//    await counter.increment()
//  }
//}
//
//Task {
//  for _ in 0..<5 {
//    await counter.increment()
//  }
//}

//@MainActor func asyncMainString(_ string: String) async -> String {
//  do {
//    try await Task.sleep(nanoseconds: 1_000_000_000)
//    return string
//  }
//  catch {
//    return error.localizedDescription // e.g. CancellationError()
//  }
//}
//
//@MainActor func asyncMainPrint(_ string: String) async {
//  await print(asyncMainString(string))
//}

//Task {
//  async let a: () = asyncMainPrint("A")
//  async let b: () = asyncMainPrint("B")
//  async let c: () = asyncMainPrint("C")
//  async let d: () = asyncMainPrint("D")
//  await (a, b, c, d)
//}

//: [Next](@next)
