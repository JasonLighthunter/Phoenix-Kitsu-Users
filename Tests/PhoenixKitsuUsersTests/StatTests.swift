import XCTest
@testable import PhoenixKitsuUsers

class StatTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "stats",
    "links" : [
      "self" : "https://kitsu.io/api/edge/stats/4"
    ],
    "attributes" : [
      "createdAt": "2017-07-28T02:17:44.910Z",
      "updatedAt": "2017-10-26T22:10:45.456Z",
      "kind": "anime-category-breakdown",
      "statsData": [:]
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "stats",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt": "2017-07-28T02:17:44.910Z",
      "updatedAt": "2017-10-26T22:10:45.456Z",
      "kind": "anime-category-breakdown",
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "stats",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt": "2017-07-28T02:17:44.910Z",
      "updatedAt": "2017-10-26T22:10:45.456Z",
      "kind": "anime-category-breakdown",
      "statsData": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt": "2017-07-28T02:17:44.910Z",
      "updatedAt": "2017-10-26T22:10:45.456Z",
      "statsData": [:]
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : nil,
    "type" : nil,
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt": "2017-07-28T02:17:44.910Z",
      "updatedAt": nil,
      "kind": "anime-category-breakdown",
      "statsData": [:]
    ]
  ]
  
  var stat: Stat?
  var statAttributes: StatAttributes?
  
  override func tearDown() {
    stat = nil
    statAttributes = nil
    
    super.tearDown()
  }
  
  func testStatFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      stat = try? decoder.decode(Stat.self, from: data!)
    } else {
      stat = nil
    }
    statAttributes = stat?.attributes
    
    XCTAssertNotNil(stat)
    
    XCTAssertEqual(stat?.objectID, "4")
    XCTAssertEqual(stat?.type, "stats")
    
    XCTAssertNotNil(statAttributes)
    
    XCTAssertEqual(statAttributes?.createdAt, "2017-07-28T02:17:44.910Z")
    XCTAssertEqual(statAttributes?.updatedAt, "2017-10-26T22:10:45.456Z")
    XCTAssertEqual(statAttributes?.kind, StatKindEnum.animeCategoryBreakdown)
    
//    XCTAssertNotNil(statAttributes?.statsData)
  }
  
  func testStatValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      stat = try? decoder.decode(Stat.self, from: data!)
    } else {
      stat = nil
    }
    statAttributes = stat?.attributes
    
    XCTAssertNotNil(stat)
    
    XCTAssertEqual(stat?.objectID, "4")
    XCTAssertEqual(stat?.type, "stats")
    
    XCTAssertNotNil(statAttributes)
    
    XCTAssertEqual(statAttributes?.createdAt, "2017-07-28T02:17:44.910Z")
    XCTAssertEqual(statAttributes?.updatedAt, "2017-10-26T22:10:45.456Z")
    XCTAssertEqual(statAttributes?.kind, StatKindEnum.animeCategoryBreakdown)
    
    XCTAssertNil(statAttributes?.statsData)
  }
  
  func testStatValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      stat = try? decoder.decode(Stat.self, from: data!)
    } else {
      stat = nil
    }
    statAttributes = stat?.attributes
    
    XCTAssertNotNil(stat)
    
    XCTAssertEqual(stat?.objectID, "4")
    XCTAssertEqual(stat?.type, "stats")
    
    XCTAssertNotNil(statAttributes)
    
    XCTAssertEqual(statAttributes?.createdAt, "2017-07-28T02:17:44.910Z")
    XCTAssertEqual(statAttributes?.updatedAt, "2017-10-26T22:10:45.456Z")
    XCTAssertEqual(statAttributes?.kind, StatKindEnum.animeCategoryBreakdown)
    
    XCTAssertNil(statAttributes?.statsData)
  }
  
  func testStatInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      stat = try? decoder.decode(Stat.self, from: data!)
    } else {
      stat = nil
    }
    
    XCTAssertNil(stat)
  }
  
  func testStatInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      stat = try? decoder.decode(Stat.self, from: data!)
    } else {
      stat = nil
    }
    
    XCTAssertNil(stat)
  }
}

