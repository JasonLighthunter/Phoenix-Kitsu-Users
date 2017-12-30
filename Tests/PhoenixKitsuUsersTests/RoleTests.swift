import XCTest
@testable import PhoenixKitsuUsers

class RoleTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "roles",
    "links" : [
      "self" : "https://kitsu.io/api/edge/roles/4"
    ],
    "attributes": [
      "createdAt": "2016-12-12T14:32:06.707Z",
      "updatedAt": "2016-12-12T14:32:06.707Z",
      "name": "admin",
      "resourceId": "3",
      "resourceType": "person"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "roles",
    "links" : [
      "self" : "https://kitsu.io/api/edge/roles/4"
    ],
    "attributes" : [:]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "roles",
    "links" : [
      "self" : "https://kitsu.io/api/edge/roles/4"
    ],
    "attributes": [
      "createdAt": nil,
      "updatedAt": nil,
      "name": nil,
      "resourceId": nil,
      "resourceType": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "3",
    "links" : [
      "self" : "https://kitsu.io/api/edge/roles/4"
    ],
    "attributes": [
      "createdAt": "2016-12-12T14:32:06.707Z",
      "updatedAt": "2016-12-12T14:32:06.707Z",
      "name": "admin",
      "resourceId": "3",
      "resourceType": "person"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : nil,
    "type" : nil,
    "links" : [
      "self" : "https://kitsu.io/api/edge/roles/4"
    ],
    "attributes": [
      "createdAt": "2016-12-12T14:32:06.707Z",
      "updatedAt": "2016-12-12T14:32:06.707Z",
      "name": "admin",
      "resourceId": "3",
      "resourceType": "person"
    ]
  ]
  
  var role: Role?
  var roleAttributes: RoleAttributes?
  
  override func tearDown() {
    role = nil
    roleAttributes = nil
    
    super.tearDown()
  }
  
  func testRoleFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      role = try? decoder.decode(Role.self, from: data!)
    } else {
      role = nil
    }
    roleAttributes = role?.attributes
    
    XCTAssertNotNil(role)
    
    XCTAssertEqual(role?.objectID, "4")
    XCTAssertEqual(role?.type, "roles")
    
    XCTAssertNotNil(roleAttributes)
    
    XCTAssertEqual(roleAttributes?.createdAt, "2016-12-12T14:32:06.707Z")
    XCTAssertEqual(roleAttributes?.updatedAt, "2016-12-12T14:32:06.707Z")
    XCTAssertEqual(roleAttributes?.name, "admin")
    XCTAssertEqual(roleAttributes?.resourceID, "3")
    XCTAssertEqual(roleAttributes?.resourceType, "person")
  }
  
  func testRoleValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      role = try? decoder.decode(Role.self, from: data!)
    } else {
      role = nil
    }
    roleAttributes = role?.attributes
    
    XCTAssertNotNil(role)
    
    XCTAssertEqual(role?.objectID, "4")
    XCTAssertEqual(role?.type, "roles")
    
    XCTAssertNotNil(roleAttributes)
    
    XCTAssertNil(roleAttributes?.createdAt)
    XCTAssertNil(roleAttributes?.updatedAt)
    XCTAssertNil(roleAttributes?.name)
    XCTAssertNil(roleAttributes?.resourceID)
    XCTAssertNil(roleAttributes?.resourceType)
  }
  
  func testRoleValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      role = try? decoder.decode(Role.self, from: data!)
    } else {
      role = nil
    }
    roleAttributes = role?.attributes
    
    XCTAssertNotNil(role)
    
    XCTAssertEqual(role?.objectID, "4")
    XCTAssertEqual(role?.type, "roles")
    
    XCTAssertNotNil(roleAttributes)
    
    XCTAssertNil(roleAttributes?.createdAt)
    XCTAssertNil(roleAttributes?.updatedAt)
    XCTAssertNil(roleAttributes?.name)
    XCTAssertNil(roleAttributes?.resourceID)
    XCTAssertNil(roleAttributes?.resourceType)
  }
  
  func testRoleInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      role = try? decoder.decode(Role.self, from: data!)
    } else {
      role = nil
    }
    
    XCTAssertNil(role)
  }
  
  func testRoleInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      role = try? decoder.decode(Role.self, from: data!)
    } else {
      role = nil
    }
    
    XCTAssertNil(role)
  }
}

