//: [Previous](@previous)

import Foundation

// ---------
// detached task with priority
// ---------
Task.detached(priority: .low) {
  await asyncPrint("low")
}
Task.detached(priority: .medium) {
  await asyncPrint("medium")
}
Task.detached(priority: .background) {
  await asyncPrint("background")
}
Task.detached(priority: .high) {
  await asyncPrint("high")
}

// Will likely print:
//  high
//  medium
//  low
//  background

//: [Next](@next)
