# Haversine

Calculate the [Haversine distance](https://en.wikipedia.org/wiki/Haversine_formula) between two coordinate pairs. This does not take into account the fact that the Earth is not a perfect sphere, but it's close enough for some applications. Use CoreLocation's distance API for better results.

```swift
let dresden = Coordinate(latitude: 51.0767496, longitude: 13.6321621)
let valencia = Coordinate(latitude: 39.4077641, longitude: -0.4317223)

let distance = dresden.distance(from: valencia)
// This is off by ~450m according to CoreLocation, which is roughly 0.03%.
```

