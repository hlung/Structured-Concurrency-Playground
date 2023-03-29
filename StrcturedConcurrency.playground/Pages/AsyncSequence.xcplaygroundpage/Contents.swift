//: [Previous](@previous)

import Foundation

// ---------
// AsyncSequence / AsyncStream
// ---------
let stream = AsyncStream(String.self) { continuation in
  Task {
    for s in ["A", "B", "C", "D", "E", "F", "G"] {
      await continuation.yield(asyncString(s))
    }
    continuation.finish()
  }
}
for await s in stream {
  print("stream:", s)
}

//: [Next](@next)
