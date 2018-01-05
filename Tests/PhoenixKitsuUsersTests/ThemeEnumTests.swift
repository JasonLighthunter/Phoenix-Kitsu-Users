import XCTest
@testable import PhoenixKitsuUsers

class ThemeEnumTests: XCTestCase {
  func testThemeEnum() {
    XCTAssertEqual(ThemeEnum(rawValue: "light"), ThemeEnum.light)
    XCTAssertEqual(ThemeEnum(rawValue: "dark"), ThemeEnum.dark)
    XCTAssertNil(ThemeEnum(rawValue: "InvalidInput"))
  }
}
