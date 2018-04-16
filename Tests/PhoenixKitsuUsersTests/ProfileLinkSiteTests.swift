import XCTest
@testable import PhoenixKitsuUsers

class ProfileLinkSiteTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any] = [
    "id": "4",
    "type": "profileLinkSites",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-link-sites/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "name": "twitter"
    ]
  ]

  let validMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "profileLinkSites",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-link-sites/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "name": "twitter"
    ]
  ]

  let validNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "profileLinkSites",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-link-sites/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z",
      "name": "twitter"
    ]
  ]

  let invalidMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "profileLinkSites",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-link-sites/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "name": "twitter"
    ]
  ]

  let invalidNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "profileLinkSites",
    "links": [
      "self": "https://kitsu.io/api/edge/profile-link-sites/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": nil,
      "name": "twitter"

    ]
  ]

  var profileLinkSite: ProfileLinkSite?
  var profileLinkSiteAttributes: ProfileLinkSiteAttributes?

  override func tearDown() {
    profileLinkSite = nil
    profileLinkSiteAttributes = nil

    super.tearDown()
  }

  func testProfileLinkSiteFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLinkSite = try? decoder.decode(ProfileLinkSite.self, from: data!)
    } else {
      profileLinkSite = nil
    }
    profileLinkSiteAttributes = profileLinkSite?.attributes

    XCTAssertNotNil(profileLinkSite)

    XCTAssertEqual(profileLinkSite?.objectID, "4")
    XCTAssertEqual(profileLinkSite?.type, "profileLinkSites")

    XCTAssertNotNil(profileLinkSiteAttributes)

    XCTAssertEqual(profileLinkSiteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkSiteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkSiteAttributes?.name, "twitter")
  }

  func testProfileLinkSiteValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLinkSite = try? decoder.decode(ProfileLinkSite.self, from: data!)
    } else {
      profileLinkSite = nil
    }
    profileLinkSiteAttributes = profileLinkSite?.attributes

    XCTAssertNotNil(profileLinkSite)

    XCTAssertEqual(profileLinkSite?.objectID, "4")
    XCTAssertEqual(profileLinkSite?.type, "profileLinkSites")

    XCTAssertNotNil(profileLinkSiteAttributes)

    XCTAssertEqual(profileLinkSiteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkSiteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkSiteAttributes?.name, "twitter")
  }

  func testProfileLinkSiteValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLinkSite = try? decoder.decode(ProfileLinkSite.self, from: data!)
    } else {
      profileLinkSite = nil
    }
    profileLinkSiteAttributes = profileLinkSite?.attributes

    XCTAssertNotNil(profileLinkSite)

    XCTAssertEqual(profileLinkSite?.objectID, "4")
    XCTAssertEqual(profileLinkSite?.type, "profileLinkSites")

    XCTAssertNotNil(profileLinkSiteAttributes)

    XCTAssertEqual(profileLinkSiteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkSiteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(profileLinkSiteAttributes?.name, "twitter")
  }

  func testProfileLinkSiteInvalidMissingData() {
    let json = invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLinkSite = try? decoder.decode(ProfileLinkSite.self, from: data!)
    } else {
      profileLinkSite = nil
    }
    profileLinkSiteAttributes = profileLinkSite?.attributes

    XCTAssertNotNil(profileLinkSite)

    XCTAssertEqual(profileLinkSite?.objectID, "4")
    XCTAssertEqual(profileLinkSite?.type, "profileLinkSites")

    XCTAssertNil(profileLinkSiteAttributes)
  }

  func testProfileLinkSiteInvalidNilData() {
    let json = invalidNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      profileLinkSite = try? decoder.decode(ProfileLinkSite.self, from: data!)
    } else {
      profileLinkSite = nil
    }
    profileLinkSiteAttributes = profileLinkSite?.attributes

    XCTAssertNotNil(profileLinkSite)

    XCTAssertEqual(profileLinkSite?.objectID, "4")
    XCTAssertEqual(profileLinkSite?.type, "profileLinkSites")

    XCTAssertNil(profileLinkSiteAttributes)
  }
}
