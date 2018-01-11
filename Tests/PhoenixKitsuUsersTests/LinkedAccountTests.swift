import XCTest
@testable import PhoenixKitsuUsers

class LinkedAccountTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id": "1911",
    "type": "linkedAccounts",
    "links": [
      "self": "https://kitsu.io/api/edge/linked-accounts/1911"
    ],
    "attributes": [
      "createdAt": "2017-08-22T20:36:46.580Z",
      "updatedAt": "2017-08-22T20:36:46.580Z",
      "kind": "my-anime-list",
      "externalUserId": "synthtech",
      "token": [
        "resource_owner_id" : 29629,
        "scopes": [
          "public"
        ],
        "expires_in_seconds": 2592000,
        "application": [
          "uid": "4"
        ],
        "created_at": 1508818017
      ],
      "shareTo": false,
      "shareFrom": false,
      "syncTo": true,
      "disabledReason": "reason"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id": "1911",
    "type": "linkedAccounts",
    "links": [
      "self": "https://kitsu.io/api/edge/linked-accounts/1911"
    ],
    "attributes": [
      "createdAt": "2017-08-22T20:36:46.580Z",
      "updatedAt": "2017-08-22T20:36:46.580Z",
      "kind": "my-anime-list",
      "externalUserId": "synthtech",
      "shareTo": false,
      "shareFrom": false,
      "syncTo": true
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id": "1911",
    "type": "linkedAccounts",
    "links": [
      "self": "https://kitsu.io/api/edge/linked-accounts/1911"
    ],
    "attributes": [
      "createdAt": "2017-08-22T20:36:46.580Z",
      "updatedAt": "2017-08-22T20:36:46.580Z",
      "kind": "my-anime-list",
      "externalUserId": "synthtech",
      "token": nil,
      "shareTo": false,
      "shareFrom": false,
      "syncTo": true,
      "disabledReason": nil
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id": "1911",
    "type": "linkedAccounts",
    "links": [
      "self": "https://kitsu.io/api/edge/linked-accounts/1911"
    ],
    "attributes": [
      "createdAt": "2017-08-22T20:36:46.580Z",
      "updatedAt": "2017-08-22T20:36:46.580Z",
      "kind": "my-anime-list",
      "token": [
        "resource_owner_id" : 29629,
        "scopes": [
          "public"
        ],
        "expires_in_seconds": 2592000,
        "application": [
          "uid": "4"
        ],
        "created_at": 1508818017
      ],
      "shareTo": false,
      "shareFrom": false,
      "syncTo": true,
      "disabledReason": "reason"
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id": "1911",
    "type": "linkedAccounts",
    "links": [
      "self": "https://kitsu.io/api/edge/linked-accounts/1911"
    ],
    "attributes": [
      "createdAt": "2017-08-22T20:36:46.580Z",
      "updatedAt": "2017-08-22T20:36:46.580Z",
      "kind": nil,
      "externalUserId": "synthtech",
      "token": [
        "resource_owner_id" : 29629,
        "scopes": [
          "public"
        ],
        "expires_in_seconds": 2592000,
        "application": [
          "uid": "4"
        ],
        "created_at": 1508818017
      ],
      "shareTo": false,
      "shareFrom": false,
      "syncTo": true,
      "disabledReason": "reason"
    ]
  ]
  
  var linkedAccount: LinkedAccount?
  var linkedAccountAttributes: LinkedAccountAttributes?
  
  override func tearDown() {
    linkedAccount = nil
    linkedAccountAttributes = nil
    
    super.tearDown()
  }
  
  func testLinkedAccountFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccount = try? decoder.decode(LinkedAccount.self, from: data!)
    } else {
      linkedAccount = nil
    }
    linkedAccountAttributes = linkedAccount?.attributes

    XCTAssertNotNil(linkedAccount)
    
    XCTAssertEqual(linkedAccount?.objectID, "1911")
    XCTAssertEqual(linkedAccount?.type, "linkedAccounts")
    
    XCTAssertNotNil(linkedAccountAttributes)
    
    XCTAssertEqual(linkedAccountAttributes?.createdAt, "2017-08-22T20:36:46.580Z")
    XCTAssertEqual(linkedAccountAttributes?.updatedAt, "2017-08-22T20:36:46.580Z")
    XCTAssertEqual(linkedAccountAttributes?.kind, "my-anime-list")
    XCTAssertEqual(linkedAccountAttributes?.externalUserID, "synthtech")
    
    XCTAssertNotNil(linkedAccountAttributes?.token)
    
    XCTAssertFalse((linkedAccountAttributes?.shareTo)!)
    XCTAssertFalse((linkedAccountAttributes?.shareFrom)!)
    XCTAssertTrue((linkedAccountAttributes?.syncTo)!)
    XCTAssertEqual(linkedAccountAttributes?.disabledReason, "reason")
  }
  
  func testLinkedAccountValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccount = try? decoder.decode(LinkedAccount.self, from: data!)
    } else {
      linkedAccount = nil
    }
    linkedAccountAttributes = linkedAccount?.attributes
    
    XCTAssertNotNil(linkedAccount)
    
    XCTAssertEqual(linkedAccount?.objectID, "1911")
    XCTAssertEqual(linkedAccount?.type, "linkedAccounts")
    
    XCTAssertNotNil(linkedAccountAttributes)
    
    XCTAssertEqual(linkedAccountAttributes?.createdAt, "2017-08-22T20:36:46.580Z")
    XCTAssertEqual(linkedAccountAttributes?.updatedAt, "2017-08-22T20:36:46.580Z")
    XCTAssertEqual(linkedAccountAttributes?.kind, "my-anime-list")
    XCTAssertEqual(linkedAccountAttributes?.externalUserID, "synthtech")
    
    XCTAssertNil(linkedAccountAttributes?.token)
    
    XCTAssertFalse((linkedAccountAttributes?.shareTo)!)
    XCTAssertFalse((linkedAccountAttributes?.shareFrom)!)
    XCTAssertTrue((linkedAccountAttributes?.syncTo)!)
    
    XCTAssertNil(linkedAccountAttributes?.disabledReason)
  }
  
  func testLinkedAccountValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccount = try? decoder.decode(LinkedAccount.self, from: data!)
    } else {
      linkedAccount = nil
    }
    linkedAccountAttributes = linkedAccount?.attributes
    
    XCTAssertNotNil(linkedAccount)
    
    XCTAssertEqual(linkedAccount?.objectID, "1911")
    XCTAssertEqual(linkedAccount?.type, "linkedAccounts")
    
    XCTAssertNotNil(linkedAccountAttributes)
    
    XCTAssertEqual(linkedAccountAttributes?.createdAt, "2017-08-22T20:36:46.580Z")
    XCTAssertEqual(linkedAccountAttributes?.updatedAt, "2017-08-22T20:36:46.580Z")
    XCTAssertEqual(linkedAccountAttributes?.kind, "my-anime-list")
    XCTAssertEqual(linkedAccountAttributes?.externalUserID, "synthtech")
    
    XCTAssertNil(linkedAccountAttributes?.token)
    
    XCTAssertFalse((linkedAccountAttributes?.shareTo)!)
    XCTAssertFalse((linkedAccountAttributes?.shareFrom)!)
    XCTAssertTrue((linkedAccountAttributes?.syncTo)!)
    
    XCTAssertNil(linkedAccountAttributes?.disabledReason)
  }
  
  func testLinkedAccountInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccount = try? decoder.decode(LinkedAccount.self, from: data!)
    } else {
      linkedAccount = nil
    }
    linkedAccountAttributes = linkedAccount?.attributes
    
    XCTAssertNotNil(linkedAccount)
    
    XCTAssertEqual(linkedAccount?.objectID, "1911")
    XCTAssertEqual(linkedAccount?.type, "linkedAccounts")
    
    XCTAssertNil(linkedAccountAttributes)
  }
  
  func testLinkedAccountInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      linkedAccount = try? decoder.decode(LinkedAccount.self, from: data!)
    } else {
      linkedAccount = nil
    }
    linkedAccountAttributes = linkedAccount?.attributes
    
    XCTAssertNotNil(linkedAccount)
    
    XCTAssertEqual(linkedAccount?.objectID, "1911")
    XCTAssertEqual(linkedAccount?.type, "linkedAccounts")
    
    XCTAssertNil(linkedAccountAttributes)
  }
}



