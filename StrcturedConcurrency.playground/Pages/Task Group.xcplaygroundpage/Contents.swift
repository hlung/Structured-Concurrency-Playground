//: [Previous](@previous)

import Foundation

// ---------
// group tasks *** with error ***
// ---------
//Task {
//  var strings: [String] = []
//  await withTaskGroup(of: Void.self) { group in
//    for s in ["A", "B", "C"] {
//      group.addTask {
//        // Error: Mutation of captured var 'strings' in concurrently-executing code
//        await strings.append(asyncString(s))
//      }
//    }
//  }
//  print(strings)
//}

// ---------
// group tasks no error
// ---------
Task {
  await withTaskGroup(of: Any.self) { group in
    for s in ["A", "B", "C", "D", "E", "F"] {
      group.addTask {
        return await asyncPrint(s)
      }
    }
    for await _ in group {
    }
  }
}

//: [Next](@next)
