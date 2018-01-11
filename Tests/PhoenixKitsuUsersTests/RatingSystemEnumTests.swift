import XCTest
@testable import PhoenixKitsuUsers

class RatingSystemEnumTests: XCTestCase {
  func testRatingSystemEnum() {
    XCTAssertEqual(RatingSystemEnum(rawValue: "advanced"), RatingSystemEnum.advanced)
    XCTAssertEqual(RatingSystemEnum(rawValue: "regular"), RatingSystemEnum.regular)
    XCTAssertEqual(RatingSystemEnum(rawValue: "simple"), RatingSystemEnum.simple)
    XCTAssertNil(RatingSystemEnum(rawValue: "InvalidInput"))
  }
}
