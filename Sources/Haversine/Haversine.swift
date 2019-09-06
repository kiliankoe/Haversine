import Foundation

public struct Coordinate {
    public let latitude: Double
    public let longitude: Double

    /// Returns the Haversine distance (measured in meters) from the current object's location to the specified location.
    public func distance(from other: Coordinate) -> Double {
        // Implementation taken from https://github.com/raywenderlich/swift-algorithm-club with minor adjustments.

        func haversin(_ angle: Double) -> Double {
            (1 - cos(angle))/2
        }

        func ahaversin(_ angle: Double) -> Double {
            2*asin(sqrt(angle))
        }

        let lat1 = self.latitude.radians
        let lon1 = self.longitude.radians
        let lat2 = other.latitude.radians
        let lon2 = other.longitude.radians

        let earthRadius = 6_378_100.0

        return earthRadius * ahaversin(haversin(lat2 - lat1) + cos(lat1) * cos(lat2) * haversin(lon2 - lon1))
    }
}

private extension Double {
    var radians: Double {
        self / 360 * 2 * .pi
    }
}
