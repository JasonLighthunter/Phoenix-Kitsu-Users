import XCTest
@testable import PhoenixKitsuUsers

class LinkedAccountTokenTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any] = [
    "resource_owner_id": 29629,
    "scopes": [
      "public"
    ],
    "expires_in_seconds": 2592000,
    "application": [
      "uid": "4"
    ],
    "created_at": 1508818017
  ]

  let validMissingDataJSON: [String: Any] = [
    "resource_owner_id": 29629,
    "scopes": [
    ],
    "expires_in_seconds": 2592000,
    "created_at": 1508818017
  ]

  let validNilDataJSON: [String: Any?] = [
    "resource_owner_id": 29629,
    "scopes": [
      "public"
    ],
    "expires_in_seconds": 2592000,
    "application": nil,
    "created_at": 1508818017
  ]

  let invalidMissingDataJSON: [String: Any] = [
    "scopes": [
      "public"
    ],
    "expires_in_seconds": 2592000,
    "application": [
      "uid": "4"
    ],
    "created_at": 1508818017
  ]

  let invalidNilDataJSON: [String: Any?] = [
    "resource_owner_id": 29629,
    "scopes": [
      "public"
    ],
    "expires_in_seconds": nil,
    "application": [
      "uid": "4"
    ],
    "created_at": 1508818017
  ]

  var linkedAccountToken: LinkedAccountToken?

  override func tearDown() {
    linkedAccountToken = nil

    super.tearDown()
  }

  func testLinkedAccountTokenFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountToken = try? decoder.decode(LinkedAccountToken.self, from: data!)
    } else {
      linkedAccountToken = nil
    }

    XCTAssertNotNil(linkedAccountToken)
    XCTAssertEqual(linkedAccountToken?.resourceOwnerID, 29629)
    XCTAssertEqual(linkedAccountToken?.scopes, json["scopes"] as? [String])
    XCTAssertEqual(linkedAccountToken?.expiresInSeconds, 2592000)
    XCTAssertNotNil(linkedAccountToken?.application)
    XCTAssertEqual(linkedAccountToken?.createdAt, 1508818017)
  }

  func testLinkedAccountTokenValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountToken = try? decoder.decode(LinkedAccountToken.self, from: data!)
    } else {
      linkedAccountToken = nil
    }

    XCTAssertNotNil(linkedAccountToken)
    XCTAssertEqual(linkedAccountToken?.resourceOwnerID, 29629)
    XCTAssertEqual((linkedAccountToken?.scopes)!, [])
    XCTAssertEqual(linkedAccountToken?.expiresInSeconds, 2592000)
    XCTAssertNil(linkedAccountToken?.application)
    XCTAssertEqual(linkedAccountToken?.createdAt, 1508818017)
  }

  func testLinkedAccountTokenValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountToken = try? decoder.decode(LinkedAccountToken.self, from: data!)
    } else {
      linkedAccountToken = nil
    }

    XCTAssertNotNil(linkedAccountToken)
    XCTAssertEqual(linkedAccountToken?.resourceOwnerID, 29629)
    XCTAssertEqual(linkedAccountToken?.scopes, json["scopes"] as? [String])
    XCTAssertEqual(linkedAccountToken?.expiresInSeconds, 2592000)
    XCTAssertNil(linkedAccountToken?.application)
    XCTAssertEqual(linkedAccountToken?.createdAt, 1508818017)
  }

  func testLinkedAccountTokenInvalidMissingData() {
    let json = invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountToken = try? decoder.decode(LinkedAccountToken.self, from: data!)
    } else {
      linkedAccountToken = nil
    }

    XCTAssertNil(linkedAccountToken)
  }

  func testLinkedAccountTokenInvalidNilData() {
    let json = invalidNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccountToken = try? decoder.decode(LinkedAccountToken.self, from: data!)
    } else {
      linkedAccountToken = nil
    }

    XCTAssertNil(linkedAccountToken)
  }
}
