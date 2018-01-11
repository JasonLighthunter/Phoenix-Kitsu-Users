import XCTest
@testable import PhoenixKitsuUsers

class FavoriteTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "favorites",
    "links" : [
      "self" : "https://kitsu.io/api/edge/favorites/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z",
      "favRank" : 2
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "favorites",
    "links" : [
      "self" : "https://kitsu.io/api/edge/favorites/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z",
      "favRank" : 2
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "favorites",
    "links" : [
      "self" : "https://kitsu.io/api/edge/favorites/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : "2017-08-08T12:39:19.217Z",
      "favRank" : 2
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "favorites",
    "links" : [
      "self" : "https://kitsu.io/api/edge/favorites/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "favRank" : 2
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "favorites",
    "links" : [
      "self" : "https://kitsu.io/api/edge/favorites/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : nil,
      "favRank" : 2
    ]
  ]
  
  var favorite: Favorite?
  var favoriteAttributes: FavoriteAttributes?
  
  override func tearDown() {
    favorite = nil
    favoriteAttributes = nil
    
    super.tearDown()
  }
  
  func testFavoriteFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      favorite = try? decoder.decode(Favorite.self, from: data!)
    } else {
      favorite = nil
    }
    favoriteAttributes = favorite?.attributes
    
    XCTAssertNotNil(favorite)
    
    XCTAssertEqual(favorite?.objectID, "4")
    XCTAssertEqual(favorite?.type, "favorites")
    
    XCTAssertNotNil(favoriteAttributes)
    
    XCTAssertEqual(favoriteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(favoriteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(favoriteAttributes?.favoritesRank, 2)
  }
  
  func testFavoriteValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      favorite = try? decoder.decode(Favorite.self, from: data!)
    } else {
      favorite = nil
    }
    favoriteAttributes = favorite?.attributes
    
    XCTAssertNotNil(favorite)
    
    XCTAssertEqual(favorite?.objectID, "4")
    XCTAssertEqual(favorite?.type, "favorites")
    
    XCTAssertNotNil(favoriteAttributes)
    
    XCTAssertEqual(favoriteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(favoriteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(favoriteAttributes?.favoritesRank, 2)
  }
  
  func testFavoriteValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      favorite = try? decoder.decode(Favorite.self, from: data!)
    } else {
      favorite = nil
    }
    favoriteAttributes = favorite?.attributes
    
    XCTAssertNotNil(favorite)
    
    XCTAssertEqual(favorite?.objectID, "4")
    XCTAssertEqual(favorite?.type, "favorites")
    
    XCTAssertNotNil(favoriteAttributes)
    
    XCTAssertEqual(favoriteAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(favoriteAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(favoriteAttributes?.favoritesRank, 2)
  }
  
  func testFavoriteInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      favorite = try? decoder.decode(Favorite.self, from: data!)
    } else {
      favorite = nil
    }
    favoriteAttributes = favorite?.attributes
    
    XCTAssertNotNil(favorite)
    
    XCTAssertEqual(favorite?.objectID, "4")
    XCTAssertEqual(favorite?.type, "favorites")
    
    XCTAssertNil(favoriteAttributes)
  }
  
  func testFavoriteInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      favorite = try? decoder.decode(Favorite.self, from: data!)
    } else {
      favorite = nil
    }
    favoriteAttributes = favorite?.attributes
    
    XCTAssertNotNil(favorite)
    
    XCTAssertEqual(favorite?.objectID, "4")
    XCTAssertEqual(favorite?.type, "favorites")
    
    XCTAssertNil(favoriteAttributes)
  }
}
