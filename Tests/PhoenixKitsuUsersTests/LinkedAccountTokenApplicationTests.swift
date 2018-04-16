import XCTest
@testable import PhoenixKitsuUsers

class LinkedAccountTokenApplicationTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any] = [
    "uid": "4"
  ]

  let validMissingDataJSON: [String: Any] = [:]

  let validNilDataJSON: [String: Any?] = [
    "uid": nil
  ]

  //  let invalidMissingDataJSON: [String : Any] = [
  //    "uid" : "4"
  //  ]
  //
  //  let invalidNilDataJSON: [String : Any?] = [
  //    "uid" : "4"
  //  ]

  var linkedAccountTokenApplication: LinkedAccountTokenApplication?

  override func tearDown() {
    linkedAccountTokenApplication = nil

    super.tearDown()
  }

  func testLinkedAccountTokenApplicationFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountTokenApplication = try? decoder.decode(LinkedAccountTokenApplication.self,
                                                          from: data!)
    } else {
      linkedAccountTokenApplication = nil
    }

    XCTAssertNotNil(linkedAccountTokenApplication)

    XCTAssertEqual(linkedAccountTokenApplication?.uid, "4")
  }

  func testLinkedAccountTokenApplicationValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountTokenApplication = try? decoder.decode(LinkedAccountTokenApplication.self,
                                                          from: data!)
    } else {
      linkedAccountTokenApplication = nil
    }
    XCTAssertNotNil(linkedAccountTokenApplication)

    XCTAssertNil(linkedAccountTokenApplication?.uid)
  }

  func testLinkedAccountTokenApplicationValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountTokenApplication = try? decoder.decode(LinkedAccountTokenApplication.self,
                                                          from: data!)
    } else {
      linkedAccountTokenApplication = nil
    }
    XCTAssertNotNil(linkedAccountTokenApplication)

    XCTAssertNil(linkedAccountTokenApplication?.uid)
  }

  //  func testLinkedAccountTokenApplicationInvalidMissingData() {
  //    let json = invalidMissingDataJSON
  //
  //    if JSONSerialization.isValidJSONObject(json as Any) {
  //      let data = try? JSONSerialization.data(withJSONObject: json as Any)
  //      linkedAccountTokenApplication = try? decoder.decode(LinkedAccountTokenApplication.self,
  //                                                          from: data!)
  //    } else {
  //      linkedAccountTokenApplication = nil
  //    }
  //
  //    XCTAssertNotNil(linkedAccountTokenApplication)
  //
  //    XCTAssertEqual(linkedAccountTokenApplication?.uid, "4")
  //  }
  //
  //  func testLinkedAccountTokenApplicationInvalidNilData() {
  //    let json = invalidNilDataJSON
  //
  //    if JSONSerialization.isValidJSONObject(json as Any) {
  //      let data = try? JSONSerialization.data(withJSONObject: json as Any)
  //      linkedAccountTokenApplication = try? decoder.decode(LinkedAccountTokenApplication.self,
  //                                                          from: data!)
  //    } else {
  //      linkedAccountTokenApplication = nil
  //    }
  //
  //    XCTAssertNotNil(linkedAccountTokenApplication)
  //
  //    XCTAssertEqual(linkedAccountTokenApplication?.uid, "4")
  //  }
}
