import XCTest
@testable import PhoenixKitsuUsers

class FollowTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "follows",
    "links" : [
      "self" : "https://kitsu.io/api/edge/follows/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "follows",
    "links" : [
      "self" : "https://kitsu.io/api/edge/follows/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "follows",
    "links" : [
      "self" : "https://kitsu.io/api/edge/follows/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "",
    "links" : [
      "self" : "https://kitsu.io/api/edge/follows/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : nil,
    "type" : nil,
    "links" : [
      "self" : "https://kitsu.io/api/edge/follows/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : nil
    ]
  ]
  
  var follow: Follow?
  var followAttributes: FollowAttributes?
  
  override func tearDown() {
    follow = nil
    followAttributes = nil
    
    super.tearDown()
  }
  
  func testFollowFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      follow = try? decoder.decode(Follow.self, from: data!)
    } else {
      follow = nil
    }
    followAttributes = follow?.attributes
    
    XCTAssertNotNil(follow)
    
    XCTAssertEqual(follow?.objectID, "4")
    XCTAssertEqual(follow?.type, "follows")
    
    XCTAssertNotNil(followAttributes)
    
    XCTAssertEqual(followAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(followAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testFollowValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      follow = try? decoder.decode(Follow.self, from: data!)
    } else {
      follow = nil
    }
    followAttributes = follow?.attributes
    
    XCTAssertNotNil(follow)
    
    XCTAssertEqual(follow?.objectID, "4")
    XCTAssertEqual(follow?.type, "follows")
    
    XCTAssertNotNil(followAttributes)
    
    XCTAssertEqual(followAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(followAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testFollowValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      follow = try? decoder.decode(Follow.self, from: data!)
    } else {
      follow = nil
    }
    followAttributes = follow?.attributes
    
    XCTAssertNotNil(follow)
    
    XCTAssertEqual(follow?.objectID, "4")
    XCTAssertEqual(follow?.type, "follows")
    
    XCTAssertNotNil(followAttributes)
    
    XCTAssertEqual(followAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(followAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testFollowInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      follow = try? decoder.decode(Follow.self, from: data!)
    } else {
      follow = nil
    }
    
    XCTAssertNil(follow)
  }
  
  func testFollowInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      follow = try? decoder.decode(Follow.self, from: data!)
    } else {
      follow = nil
    }
    
    XCTAssertNil(follow)
  }
}
