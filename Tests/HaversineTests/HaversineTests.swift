import XCTest
@testable import Haversine

// Both reference distances are the output of CoreLocation's APIs.

final class HaversineTests: XCTestCase {
    func testShortDistance() {
        let zwinger = Coordinate(latitude: 51.0469309, longitude: 13.7292197)
        let goldenerReiter = Coordinate(latitude: 51.0487116, longitude: 13.7355711)

        XCTAssertEqual(zwinger.distance(from: goldenerReiter), 487.46, accuracy: 1)
    }

    func testLongDistance() {
        let dresden = Coordinate(latitude: 51.0767496, longitude: 13.6321621)
        let valencia = Coordinate(latitude: 39.4077641, longitude: -0.4317223)

        XCTAssertEqual(dresden.distance(from: valencia), 1_697_311.94, accuracy: 500)
    }

    static var allTests = [
        ("testShortDistance", testShortDistance),
        ("testLongDistance", testLongDistance),
    ]
}
