import XCTest
@testable import PhoenixKitsuUsers

class UserRoleTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "userRoles",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "userRoles",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [:]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "userRoles",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt" : nil,
      "updatedAt" : nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "",
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : nil,
    "type" : nil,
    "links" : [
      "self" : "https://kitsu.io/api/edge/user-roles/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : nil
    ]
  ]
  
  var userRole: UserRole?
  var userRoleAttributes: UserRoleAttributes?
  
  override func tearDown() {
    userRole = nil
    userRoleAttributes = nil
    
    super.tearDown()
  }
  
  func testUserRoleFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      userRole = try? decoder.decode(UserRole.self, from: data!)
    } else {
      userRole = nil
    }
    userRoleAttributes = userRole?.attributes
    
    XCTAssertNotNil(userRole)
    
    XCTAssertEqual(userRole?.objectID, "4")
    XCTAssertEqual(userRole?.type, "userRoles")
    
    XCTAssertNotNil(userRoleAttributes)
    
    XCTAssertEqual(userRoleAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(userRoleAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }
  
  func testUserRoleValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      userRole = try? decoder.decode(UserRole.self, from: data!)
    } else {
      userRole = nil
    }
    userRoleAttributes = userRole?.attributes
    
    XCTAssertNotNil(userRole)
    
    XCTAssertEqual(userRole?.objectID, "4")
    XCTAssertEqual(userRole?.type, "userRoles")
    
    XCTAssertNotNil(userRoleAttributes)
    
    XCTAssertNil(userRoleAttributes?.createdAt)
    XCTAssertNil(userRoleAttributes?.updatedAt)
  }
  
  func testUserRoleValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      userRole = try? decoder.decode(UserRole.self, from: data!)
    } else {
      userRole = nil
    }
    userRoleAttributes = userRole?.attributes
    
    XCTAssertNotNil(userRole)
    
    XCTAssertEqual(userRole?.objectID, "4")
    XCTAssertEqual(userRole?.type, "userRoles")
    
    XCTAssertNotNil(userRoleAttributes)
    
    XCTAssertNil(userRoleAttributes?.createdAt)
    XCTAssertNil(userRoleAttributes?.updatedAt)
  }
  
  func testUserRoleInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      userRole = try? decoder.decode(UserRole.self, from: data!)
    } else {
      userRole = nil
    }
    
    XCTAssertNil(userRole)
  }
  
  func testUserRoleInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      userRole = try? decoder.decode(UserRole.self, from: data!)
    } else {
      userRole = nil
    }
    
    XCTAssertNil(userRole)
  }
}
