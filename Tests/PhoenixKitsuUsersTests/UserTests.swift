import XCTest
@testable import PhoenixKitsuUsers

class UserTests: XCTestCase {
  let decoder = JSONDecoder()
  
  let fullyFilledJSON: [String : Any] = [
    "id" : "4",
    "type" : "users",
    "links" : [
      "self" : "https://kitsu.io/api/edge/users/4"
    ],
    "attributes": [
      "createdAt": "2013-03-15T11:44:38.314Z",
      "updatedAt": "2018-01-04T22:52:24.879Z",
      "name": "JasonLighthunter",
      "pastNames": [
        "Jasonlighthunter"
      ],
      "slug": "JasonLighthunter",
      "about": "Hi World!",
      "location": "Netherlands",
      "waifuOrHusbando": "Waifu",
      "followersCount": 2,
      "followingCount": 5,
      "lifeSpentOnAnime": 89299,
      "birthday": "1995-08-23",
      "gender": "male",
      "commentsCount": 1,
      "favoritesCount": 6,
      "likesGivenCount": 3,
      "reviewsCount": 0,
      "likesReceivedCount": 0,
      "postsCount": 0,
      "ratingsCount": 34,
      "mediaReactionsCount": 0,
      "proExpiresAt": "2018-01-04T22:52:24.879Z",
      "title": "testTitle",
      "profileCompleted": true,
      "feedCompleted": true,
      "website": "https://example.com",
      "avatar": [
        "tiny": "https://media.kitsu.io/users/avatars/634/tiny.jpeg?1461158753",
        "small": "https://media.kitsu.io/users/avatars/634/small.jpeg?1461158753",
        "medium": "https://media.kitsu.io/users/avatars/634/medium.jpeg?1461158753",
        "large": "https://media.kitsu.io/users/avatars/634/large.jpeg?1461158753",
        "original": "https://media.kitsu.io/users/avatars/634/original.jpeg?1461158753",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "medium": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "coverImage": [
        "tiny": "https://media.kitsu.io/users/cover_images/634/tiny.jpg?1498158458",
        "small": "https://media.kitsu.io/users/cover_images/634/small.jpg?1498158458",
        "large": "https://media.kitsu.io/users/cover_images/634/large.jpg?1498158458",
        "original": "https://media.kitsu.io/users/cover_images/634/original.jpeg?1498158458",
        "meta": [
          "dimensions": [
            "tiny": [
              "width": nil,
              "height": nil
            ],
            "small": [
              "width": nil,
              "height": nil
            ],
            "large": [
              "width": nil,
              "height": nil
            ]
          ]
        ]
      ],
      "email": "test@example.nl",
      "password": "test",
      "confirmed": true,
      "previousEmail": "test2@example.nl",
      "language": "NL",
      "timeZone": "GMT",
      "country": "NL",
      "shareToGlobal": false,
      "titleLanguagePreference": "canonical",
      "sfwFilter": false,
      "ratingSystem": "advanced",
      "theme": "light",
      "facebookId": "facebooktest",
      "status": "registered"
    ]
  ]
  
  let validMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "users",
    "links" : [
      "self" : "https://kitsu.io/api/edge/users/4"
    ],
    "attributes": [
      "createdAt": "2013-03-15T11:44:38.314Z",
      "updatedAt": "2018-01-04T22:52:24.879Z",
      "pastNames": [],
      "about": "Hi World!",
      "followersCount": 2,
      "followingCount": 5,
      "lifeSpentOnAnime": 89299,
      "commentsCount": 1,
      "favoritesCount": 6,
      "likesGivenCount": 3,
      "reviewsCount": 0,
      "likesReceivedCount": 0,
      "postsCount": 0,
      "ratingsCount": 34,
      "mediaReactionsCount": 0,
      "profileCompleted": true,
      "feedCompleted": true,
      "website": "https://example.com",
      "email": "test@example.nl",
      "confirmed": true,
      "shareToGlobal": false,
      "titleLanguagePreference": "canonical",
      "sfwFilter": false,
      "ratingSystem": "advanced",
      "theme": "light",
      "status": "registered"
    ]
  ]
  
  let validNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "users",
    "links" : [
      "self" : "https://kitsu.io/api/edge/users/4"
    ],
    "attributes": [
      "createdAt": "2013-03-15T11:44:38.314Z",
      "updatedAt": "2018-01-04T22:52:24.879Z",
      "name": nil,
      "pastNames": [
        "Jasonlighthunter"
      ],
      "slug": nil,
      "about": "Hi World!",
      "location": nil,
      "waifuOrHusbando": nil,
      "followersCount": 2,
      "followingCount": 5,
      "lifeSpentOnAnime": 89299,
      "birthday": nil,
      "gender": nil,
      "commentsCount": 1,
      "favoritesCount": 6,
      "likesGivenCount": 3,
      "reviewsCount": 0,
      "likesReceivedCount": 0,
      "postsCount": 0,
      "ratingsCount": 34,
      "mediaReactionsCount": 0,
      "proExpiresAt": nil,
      "title": nil,
      "profileCompleted": true,
      "feedCompleted": true,
      "website": "https://example.com",
      "avatar": nil,
      "coverImage": nil,
      "email": "test@example.nl",
      "password": nil,
      "confirmed": true,
      "previousEmail": nil,
      "language": nil,
      "timeZone": nil,
      "country": nil,
      "shareToGlobal": false,
      "titleLanguagePreference": "canonical",
      "sfwFilter": false,
      "ratingSystem": "advanced",
      "theme": "light",
      "facebookId": nil,
      "status": "registered"
    ]
  ]
  
  let invalidMissingDataJSON: [String : Any] = [
    "id" : "4",
    "type" : "users",
    "links" : [
      "self" : "https://kitsu.io/api/edge/users/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
    ]
  ]
  
  let invalidNilDataJSON: [String : Any?] = [
    "id" : "4",
    "type" : "users",
    "links" : [
      "self" : "https://kitsu.io/api/edge/users/4"
    ],
    "attributes" : [
      "createdAt" : "2017-08-08T12:39:19.217Z",
      "updatedAt" : nil
    ]
  ]
  
  var user: User?
  var userAttributes: UserAttributes?
  
  override func tearDown() {
    user = nil
    userAttributes = nil
    
    super.tearDown()
  }
  
  func testUserFullyFilled() {
    let json = fullyFilledJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      user = try? decoder.decode(User.self, from: data!)
    } else {
      user = nil
    }
    userAttributes = user?.attributes
    
    XCTAssertNotNil(user)
    
    XCTAssertEqual(user?.objectID, "4")
    XCTAssertEqual(user?.type, "users")
    
    XCTAssertNotNil(userAttributes)
    
    XCTAssertEqual(userAttributes?.createdAt, "2013-03-15T11:44:38.314Z")
    XCTAssertEqual(userAttributes?.updatedAt, "2018-01-04T22:52:24.879Z")
    XCTAssertEqual(userAttributes?.name, "JasonLighthunter")
    XCTAssertEqual((userAttributes?.pastNames)!, ["Jasonlighthunter"])
    XCTAssertEqual(userAttributes?.slug, "JasonLighthunter")
    XCTAssertEqual(userAttributes?.about, "Hi World!")
    XCTAssertEqual(userAttributes?.location, "Netherlands")
    XCTAssertEqual(userAttributes?.waifuOrHusbando, "Waifu")
    XCTAssertEqual(userAttributes?.followersCount, 2)
    XCTAssertEqual(userAttributes?.followingCount, 5)
    XCTAssertEqual(userAttributes?.birthday, "1995-08-23")
    XCTAssertEqual(userAttributes?.gender, "male")
    XCTAssertEqual(userAttributes?.commentsCount, 1)
    XCTAssertEqual(userAttributes?.favoritesCount, 6)
    XCTAssertEqual(userAttributes?.likesGivenCount, 3)
    XCTAssertEqual(userAttributes?.reviewsCount, 0)
    XCTAssertEqual(userAttributes?.likesReceivedCount, 0)
    XCTAssertEqual(userAttributes?.postsCount, 0)
    XCTAssertEqual(userAttributes?.ratingsCount, 34)
    XCTAssertEqual(userAttributes?.mediaReactionsCount, 0)
    XCTAssertEqual(userAttributes?.proExpiresAt, "2018-01-04T22:52:24.879Z")
    XCTAssertEqual(userAttributes?.title, "testTitle")
    XCTAssertTrue((userAttributes?.hasCompletedProfile)!)
    XCTAssertTrue((userAttributes?.hasCompletedFeed)!)
    
    XCTAssertNotNil(userAttributes?.avatar)
    XCTAssertNotNil(userAttributes?.coverImage)
    
    XCTAssertEqual(userAttributes?.email, "test@example.nl")
    XCTAssertEqual(userAttributes?.password, "test")
    XCTAssertTrue((userAttributes?.isConfirmed)!)
    XCTAssertEqual(userAttributes?.previousEmail, "test2@example.nl")
    XCTAssertEqual(userAttributes?.language, "NL")
    XCTAssertEqual(userAttributes?.timeZone, "GMT")
    XCTAssertEqual(userAttributes?.country, "NL")
    XCTAssertFalse((userAttributes?.allowsSharingToGlobal)!)
    XCTAssertEqual(userAttributes?.titleLanguagePreference, "canonical")
    XCTAssertFalse((userAttributes?.usesSFWFilter)!)
    XCTAssertEqual(userAttributes?.ratingSystem, RatingSystemEnum.advanced)
    XCTAssertEqual(userAttributes?.theme, ThemeEnum.light)
    XCTAssertEqual(userAttributes?.facebookID, "facebooktest")
    XCTAssertEqual(userAttributes?.status, RegistrationStatusEnum.registered)
  }
  
  func testUserValidMissingData() {
    let json = validMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      user = try? decoder.decode(User.self, from: data!)
    } else {
      user = nil
    }
    userAttributes = user?.attributes
    
    XCTAssertNotNil(user)
    
    XCTAssertEqual(user?.objectID, "4")
    XCTAssertEqual(user?.type, "users")
    
    XCTAssertNotNil(userAttributes)
    
    XCTAssertEqual(userAttributes?.createdAt, "2013-03-15T11:44:38.314Z")
    XCTAssertEqual(userAttributes?.updatedAt, "2018-01-04T22:52:24.879Z")
    XCTAssertNil(userAttributes?.name)
    XCTAssertEqual((userAttributes?.pastNames)!, [])
    XCTAssertNil(userAttributes?.slug)
    XCTAssertEqual(userAttributes?.about, "Hi World!")
    XCTAssertNil(userAttributes?.location)
    XCTAssertNil(userAttributes?.waifuOrHusbando)
    XCTAssertEqual(userAttributes?.followersCount, 2)
    XCTAssertEqual(userAttributes?.followingCount, 5)
    XCTAssertNil(userAttributes?.birthday)
    XCTAssertNil(userAttributes?.gender)
    XCTAssertEqual(userAttributes?.commentsCount, 1)
    XCTAssertEqual(userAttributes?.favoritesCount, 6)
    XCTAssertEqual(userAttributes?.likesGivenCount, 3)
    XCTAssertEqual(userAttributes?.reviewsCount, 0)
    XCTAssertEqual(userAttributes?.likesReceivedCount, 0)
    XCTAssertEqual(userAttributes?.postsCount, 0)
    XCTAssertEqual(userAttributes?.ratingsCount, 34)
    XCTAssertEqual(userAttributes?.mediaReactionsCount, 0)
    XCTAssertNil(userAttributes?.proExpiresAt)
    XCTAssertNil(userAttributes?.title)
    XCTAssertTrue((userAttributes?.hasCompletedProfile)!)
    XCTAssertTrue((userAttributes?.hasCompletedFeed)!)
    XCTAssertNil(userAttributes?.avatar)
    XCTAssertNil(userAttributes?.coverImage)
    XCTAssertEqual(userAttributes?.email, "test@example.nl")
    XCTAssertNil(userAttributes?.password)
    XCTAssertTrue((userAttributes?.isConfirmed)!)
    XCTAssertNil(userAttributes?.previousEmail)
    XCTAssertNil(userAttributes?.language)
    XCTAssertNil(userAttributes?.timeZone)
    XCTAssertNil(userAttributes?.country)
    XCTAssertFalse((userAttributes?.allowsSharingToGlobal)!)
    XCTAssertEqual(userAttributes?.titleLanguagePreference, "canonical")
    XCTAssertFalse((userAttributes?.usesSFWFilter)!)
    XCTAssertEqual(userAttributes?.ratingSystem, RatingSystemEnum.advanced)
    XCTAssertEqual(userAttributes?.theme, ThemeEnum.light)
    XCTAssertNil(userAttributes?.facebookID)
    XCTAssertEqual(userAttributes?.status, RegistrationStatusEnum.registered)
  }
  
  func testUserValidNilData() {
    let json = validNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      user = try? decoder.decode(User.self, from: data!)
    } else {
      user = nil
    }
    userAttributes = user?.attributes
    
    XCTAssertNotNil(user)
    
    XCTAssertEqual(user?.objectID, "4")
    XCTAssertEqual(user?.type, "users")
    
    XCTAssertNotNil(userAttributes)
    
    XCTAssertEqual(userAttributes?.createdAt, "2013-03-15T11:44:38.314Z")
    XCTAssertEqual(userAttributes?.updatedAt, "2018-01-04T22:52:24.879Z")
    XCTAssertNil(userAttributes?.name)
    XCTAssertEqual((userAttributes?.pastNames)!, ["Jasonlighthunter"])
    XCTAssertNil(userAttributes?.slug)
    XCTAssertEqual(userAttributes?.about, "Hi World!")
    XCTAssertNil(userAttributes?.location)
    XCTAssertNil(userAttributes?.waifuOrHusbando)
    XCTAssertEqual(userAttributes?.followersCount, 2)
    XCTAssertEqual(userAttributes?.followingCount, 5)
    XCTAssertNil(userAttributes?.birthday)
    XCTAssertNil(userAttributes?.gender)
    XCTAssertEqual(userAttributes?.commentsCount, 1)
    XCTAssertEqual(userAttributes?.favoritesCount, 6)
    XCTAssertEqual(userAttributes?.likesGivenCount, 3)
    XCTAssertEqual(userAttributes?.reviewsCount, 0)
    XCTAssertEqual(userAttributes?.likesReceivedCount, 0)
    XCTAssertEqual(userAttributes?.postsCount, 0)
    XCTAssertEqual(userAttributes?.ratingsCount, 34)
    XCTAssertEqual(userAttributes?.mediaReactionsCount, 0)
    XCTAssertNil(userAttributes?.proExpiresAt)
    XCTAssertNil(userAttributes?.title)
    XCTAssertTrue((userAttributes?.hasCompletedProfile)!)
    XCTAssertTrue((userAttributes?.hasCompletedFeed)!)
    XCTAssertNil(userAttributes?.avatar)
    XCTAssertNil(userAttributes?.coverImage)
    XCTAssertEqual(userAttributes?.email, "test@example.nl")
    XCTAssertNil(userAttributes?.password)
    XCTAssertTrue((userAttributes?.isConfirmed)!)
    XCTAssertNil(userAttributes?.previousEmail)
    XCTAssertNil(userAttributes?.language)
    XCTAssertNil(userAttributes?.timeZone)
    XCTAssertNil(userAttributes?.country)
    XCTAssertFalse((userAttributes?.allowsSharingToGlobal)!)
    XCTAssertEqual(userAttributes?.titleLanguagePreference, "canonical")
    XCTAssertFalse((userAttributes?.usesSFWFilter)!)
    XCTAssertEqual(userAttributes?.ratingSystem, RatingSystemEnum.advanced)
    XCTAssertEqual(userAttributes?.theme, ThemeEnum.light)
    XCTAssertNil(userAttributes?.facebookID)
    XCTAssertEqual(userAttributes?.status, RegistrationStatusEnum.registered)
  }
  
  func testUserInvalidMissingData() {
    let json = invalidMissingDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      user = try? decoder.decode(User.self, from: data!)
    } else {
      user = nil
    }
    userAttributes = user?.attributes
    
    XCTAssertNotNil(user)
    
    XCTAssertEqual(user?.objectID, "4")
    XCTAssertEqual(user?.type, "users")
    
    XCTAssertNil(userAttributes)
  }
  
  func testUserInvalidNilData() {
    let json = invalidNilDataJSON
    
    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      user = try? decoder.decode(User.self, from: data!)
    } else {
      user = nil
    }
    userAttributes = user?.attributes
    
    XCTAssertNotNil(user)
    
    XCTAssertEqual(user?.objectID, "4")
    XCTAssertEqual(user?.type, "users")
    
    XCTAssertNil(userAttributes)
  }
}

