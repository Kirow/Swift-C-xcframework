import XCTest
@testable import SwiftC

final class SwiftCPackageTests: XCTestCase {
    func testExample() throws {
        Wrapper.run(name: "asd", x: 2, y: 4)
    }
}
