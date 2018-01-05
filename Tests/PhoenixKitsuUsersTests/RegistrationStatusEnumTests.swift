import XCTest
@testable import PhoenixKitsuUsers

class RegistrationStatusEnumTests: XCTestCase {
  func testRegistrationStatusEnum() {
    XCTAssertEqual(RegistrationStatusEnum(rawValue: "registered"),
                   RegistrationStatusEnum.registered)
    XCTAssertEqual(RegistrationStatusEnum(rawValue: "unregistered"),
                   RegistrationStatusEnum.unregistered)
    XCTAssertNil(RegistrationStatusEnum(rawValue: "InvalidInput"))
  }
}
