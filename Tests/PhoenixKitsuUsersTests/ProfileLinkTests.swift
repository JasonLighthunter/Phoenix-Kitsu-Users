import XCTest
@testable import PhoenixKitsuUsers

class ProfileLinkTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any] = [
    "id": "4",
    "type": "profileLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-links/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "url": "http://example.com"
    ]
  ]

  let validMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "profileLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-links/4"
    ],
    "attributes": [
      "url": "http://example.com"
    ]
  ]

  let validNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "profileLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-links/4"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "url": "http://example.com"
    ]
  ]

  let invalidMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "profileLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-links/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z"
    ]
  ]

  let invalidNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "profileLinks",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-links/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "url": nil
    ]
  ]

  var profileLink: ProfileLink?
  var profileLinkAttributes: ProfileLinkAttributes?

  override func tearDown() {
    profileLink = nil
    profileLinkAttributes = nil

    super.tearDown()
  }

  func testProfileLinkFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLink = try? decoder.decode(ProfileLink.self, from: data!)
    } else {
      profileLink = nil
    }
    profileLinkAttributes = profileLink?.attributes

    XCTAssertNotNil(profileLink)

    XCTAssertEqual(profileLink?.objectID, "4")
    XCTAssertEqual(profileLink?.type, "profileLinks")

    XCTAssertNotNil(profileLinkAttributes)

    XCTAssertEqual(profileLinkAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkAttributes?.url, "http://example.com")
  }

  func testProfileLinkValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLink = try? decoder.decode(ProfileLink.self, from: data!)
    } else {
      profileLink = nil
    }
    profileLinkAttributes = profileLink?.attributes

    XCTAssertNotNil(profileLink)

    XCTAssertEqual(profileLink?.objectID, "4")
    XCTAssertEqual(profileLink?.type, "profileLinks")

    XCTAssertNotNil(profileLinkAttributes)

    XCTAssertNil(profileLinkAttributes?.createdAt)
    XCTAssertNil(profileLinkAttributes?.updatedAt)
    XCTAssertEqual(profileLinkAttributes?.url, "http://example.com")
  }

  func testProfileLinkValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLink = try? decoder.decode(ProfileLink.self, from: data!)
    } else {
      profileLink = nil
    }
    profileLinkAttributes = profileLink?.attributes

    XCTAssertNotNil(profileLink)

    XCTAssertEqual(profileLink?.objectID, "4")
    XCTAssertEqual(profileLink?.type, "profileLinks")

    XCTAssertNotNil(profileLinkAttributes)

    XCTAssertNil(profileLinkAttributes?.createdAt)
    XCTAssertNil(profileLinkAttributes?.updatedAt)
    XCTAssertEqual(profileLinkAttributes?.url, "http://example.com")
  }

  func testProfileLinkInvalidMissingData() {
    let json = invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLink = try? decoder.decode(ProfileLink.self, from: data!)
    } else {
      profileLink = nil
    }
    profileLinkAttributes = profileLink?.attributes

    XCTAssertNotNil(profileLink)

    XCTAssertEqual(profileLink?.objectID, "4")
    XCTAssertEqual(profileLink?.type, "profileLinks")

    XCTAssertNil(profileLinkAttributes)
  }

  func testProfileLinkInvalidNilData() {
    let json = invalidNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLink = try? decoder.decode(ProfileLink.self, from: data!)
    } else {
      profileLink = nil
    }
    profileLinkAttributes = profileLink?.attributes

    XCTAssertNotNil(profileLink)

    XCTAssertEqual(profileLink?.objectID, "4")
    XCTAssertEqual(profileLink?.type, "profileLinks")

    XCTAssertNil(profileLinkAttributes)
  }
}
