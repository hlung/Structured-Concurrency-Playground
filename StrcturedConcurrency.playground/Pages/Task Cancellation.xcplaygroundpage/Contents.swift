//: [Previous](@previous)

import Foundation

// ---------
// task cancellation
// ---------
let taskToCancel: Task<Void, Never> = Task {
  if Task.isCancelled { return }
  // or
  // try Task.checkCancellation() // also change to Task<Void, Error>
  await asyncPrint("This will not be printed")
}
taskToCancel.cancel()

//: [Next](@next)
