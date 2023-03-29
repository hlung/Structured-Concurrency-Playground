import Foundation

public func asyncString(_ string: String) async -> String {
  do {
    try await Task.sleep(nanoseconds: 300_000_000)
    return string
  }
  catch {
    return error.localizedDescription // e.g. CancellationError()
  }
}

public func asyncPrint(_ string: String) async {
  await print(asyncString(string))
  // or
  // print(await asyncString(string))
}

public class AsyncClass {
  var count = 0

  public init() {
  }

  @MainActor public func asyncString(_ string: String) async -> String {
    do {
      print("\(Date()) \(count) start")
      try await Task.sleep(nanoseconds: 1_000_000_000)
      print("\(Date()) \(count) count")
      count += 1
      print("\(Date()) \(count) print")
      return "\(count) \(string)"
    }
    catch {
      return error.localizedDescription // e.g. CancellationError()
    }
  }

  @MainActor public func asyncPrint(_ string: String) async {
    await print(asyncString(string))
  }
}

// Actor
actor AsyncActor {
  var count = 0

  func incrementSync() {
    count += 1
    print(count)
  }

  func increment() async {
    do {
      try await Task.sleep(nanoseconds: 250_000_000)
      count += 1
      print(count)
      return
    }
    catch {
      return
    }
  }
}
