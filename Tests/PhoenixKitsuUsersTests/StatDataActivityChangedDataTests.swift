import XCTest
@testable import PhoenixKitsuUsers

class StatDataActivityChangedDataTests: XCTestCase {
  let decoder = JSONDecoder()

  let updatedWithStartedAtJSON: [String: Any] = [
    "progress": [
      18,
      19
    ],
    "started_at": [
      nil,
      "2017-08-16T13:00:26.527Z"
    ],
    "updated_at": [
      "2017-02-04T22:09:12.867Z",
      "2017-08-16T13:00:26.528Z"
    ],
    "progressed_at": [
      "2017-02-04T22:09:12.867Z",
      "2017-08-16T13:00:26.497Z"
    ]
  ]

  let updatedWithoutStartedAtJSON: [String: Any] = [
    "progress": [
      18,
      19
    ],
    "updated_at": [
      "2017-02-04T22:09:12.867Z",
      "2017-08-16T13:00:26.528Z"
    ],
    "progressed_at": [
      "2017-02-04T22:09:12.867Z",
      "2017-08-16T13:00:26.497Z"
    ]
  ]

  let addedJSON: [String: Any] = [
    "id": [
      nil,
      17499243
    ],
    "status": [
      nil,
      "planned"
    ],
    "user_id": [
      nil,
      634
    ],
    "anime_id": [
      nil,
      11913
    ],
    "media_id": [
      nil,
      11913
    ],
    "created_at": [
      nil,
      "2017-06-12T21:16:21.149Z"
    ],
    "media_type": [
      nil,
      "Anime"
    ],
    "updated_at": [
      nil,
      "2017-06-12T21:16:21.149Z"
    ]
  ]

  let finishedJSON: [String: Any] = [
    "status": [
      "current",
      "completed"
    ],
    "progress": [
      23,
      24
    ],
    "updated_at": [
      "2017-06-06T20:04:25.401Z",
      "2017-06-15T19:34:28.193Z"
    ],
    "finished_at": [
      nil,
      "2017-06-15T19:34:28.192Z"
    ],
    "progressed_at": [
      "2017-06-06T20:04:25.401Z",
      "2017-06-15T19:34:28.193Z"
    ]
  ]

  let missingJSON: [String: Any] = [:]

  let emptyJSON: [String: Any] = [
    "id": [],
    "status": [],
    "user_id": [],
    "anime_id": [],
    "manga_id": [],
    "media_id": [],
    "created_at": [],
    "media_type": [],
    "started_at": [],
    "progress": [],
    "updated_at": [],
    "progressed_at": [],
    "finished_at": []
  ]

  let nilJSON: [String: Any?] = [
    "id": nil,
    "status": nil,
    "user_id": nil,
    "anime_id": nil,
    "manga_id": nil,
    "media_id": nil,
    "created_at": nil,
    "media_type": nil,
    "started_at": nil,
    "progress": nil,
    "updated_at": nil,
    "progressed_at": nil,
    "finished_at": nil
  ]

  var statDataActivityChangedData: StatDataActivityChangedData?

  override func tearDown() {
    statDataActivityChangedData = nil

    super.tearDown()
  }

  func testStatDataActivityChangedDataUpdatedWithStartedAt() {
    let json = updatedWithStartedAtJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertNil(statDataActivityChangedData?.objectID)
    XCTAssertNil(statDataActivityChangedData?.status)
    XCTAssertNil(statDataActivityChangedData?.userID)
    XCTAssertNil(statDataActivityChangedData?.animeID)
    XCTAssertNil(statDataActivityChangedData?.mangaID)
    XCTAssertNil(statDataActivityChangedData?.mediaID)
    XCTAssertNil(statDataActivityChangedData?.createdAt)
    XCTAssertNil(statDataActivityChangedData?.mediaType)
    XCTAssertNil(statDataActivityChangedData?.finishedAt)

    XCTAssertEqual(statDataActivityChangedData?.progress![0], 18)
    XCTAssertEqual(statDataActivityChangedData?.progress![1], 19)

    XCTAssertNil(statDataActivityChangedData?.startedAt![0])
    XCTAssertEqual(statDataActivityChangedData?.startedAt![1], "2017-08-16T13:00:26.527Z")

    XCTAssertEqual(statDataActivityChangedData?.updatedAt![0], "2017-02-04T22:09:12.867Z")
    XCTAssertEqual(statDataActivityChangedData?.updatedAt![1], "2017-08-16T13:00:26.528Z")

    XCTAssertEqual(statDataActivityChangedData?.progressedAt![0], "2017-02-04T22:09:12.867Z")
    XCTAssertEqual(statDataActivityChangedData?.progressedAt![1], "2017-08-16T13:00:26.497Z")
  }

  func testStatDataActivityChangedDataUpdatedWithoutStartedAt() {
    let json = updatedWithoutStartedAtJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertNil(statDataActivityChangedData?.objectID)
    XCTAssertNil(statDataActivityChangedData?.status)
    XCTAssertNil(statDataActivityChangedData?.userID)
    XCTAssertNil(statDataActivityChangedData?.animeID)
    XCTAssertNil(statDataActivityChangedData?.mangaID)
    XCTAssertNil(statDataActivityChangedData?.mediaID)
    XCTAssertNil(statDataActivityChangedData?.createdAt)
    XCTAssertNil(statDataActivityChangedData?.mediaType)
    XCTAssertNil(statDataActivityChangedData?.finishedAt)

    XCTAssertEqual(statDataActivityChangedData?.progress![0], 18)
    XCTAssertEqual(statDataActivityChangedData?.progress![1], 19)

    XCTAssertNil(statDataActivityChangedData?.startedAt)

    XCTAssertEqual(statDataActivityChangedData?.updatedAt![0], "2017-02-04T22:09:12.867Z")
    XCTAssertEqual(statDataActivityChangedData?.updatedAt![1], "2017-08-16T13:00:26.528Z")

    XCTAssertEqual(statDataActivityChangedData?.progressedAt![0], "2017-02-04T22:09:12.867Z")
    XCTAssertEqual(statDataActivityChangedData?.progressedAt![1], "2017-08-16T13:00:26.497Z")
  }

  func testStatDataActivityChangedDataAdded() {
    let json = addedJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)

    XCTAssertNil(statDataActivityChangedData?.objectID![0])
    XCTAssertEqual(statDataActivityChangedData?.objectID![1], 17499243)

    XCTAssertNil(statDataActivityChangedData?.status![0])
    XCTAssertEqual(statDataActivityChangedData?.status![1], "planned")

    XCTAssertNil(statDataActivityChangedData?.userID![0])
    XCTAssertEqual(statDataActivityChangedData?.userID![1], 634)

    XCTAssertNil(statDataActivityChangedData?.animeID![0])
    XCTAssertEqual(statDataActivityChangedData?.animeID![1], 11913)

    XCTAssertNil(statDataActivityChangedData?.mangaID)

    XCTAssertNil(statDataActivityChangedData?.mediaID![0])
    XCTAssertEqual(statDataActivityChangedData?.mediaID![1], 11913)

    XCTAssertNil(statDataActivityChangedData?.createdAt![0])
    XCTAssertEqual(statDataActivityChangedData?.createdAt![1], "2017-06-12T21:16:21.149Z")

    XCTAssertNil(statDataActivityChangedData?.mediaType![0])
    XCTAssertEqual(statDataActivityChangedData?.mediaType![1], "Anime")

    XCTAssertNil(statDataActivityChangedData?.startedAt)
    XCTAssertNil(statDataActivityChangedData?.progress)

    XCTAssertNil(statDataActivityChangedData?.updatedAt![0])
    XCTAssertEqual(statDataActivityChangedData?.updatedAt![1], "2017-06-12T21:16:21.149Z")

    XCTAssertNil(statDataActivityChangedData?.progressedAt)
    XCTAssertNil(statDataActivityChangedData?.finishedAt)
  }

  func testStatDataActivityChangedDataFinished() {
    let json = finishedJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertNil(statDataActivityChangedData?.objectID)

    XCTAssertEqual(statDataActivityChangedData?.status![0], "current")
    XCTAssertEqual(statDataActivityChangedData?.status![1], "completed")

    XCTAssertNil(statDataActivityChangedData?.userID)
    XCTAssertNil(statDataActivityChangedData?.animeID)
    XCTAssertNil(statDataActivityChangedData?.mangaID)
    XCTAssertNil(statDataActivityChangedData?.mediaID)
    XCTAssertNil(statDataActivityChangedData?.createdAt)
    XCTAssertNil(statDataActivityChangedData?.mediaType)
    XCTAssertNil(statDataActivityChangedData?.startedAt)

    XCTAssertEqual(statDataActivityChangedData?.progress![0], 23)
    XCTAssertEqual(statDataActivityChangedData?.progress![1], 24)

    XCTAssertEqual(statDataActivityChangedData?.updatedAt![0], "2017-06-06T20:04:25.401Z")
    XCTAssertEqual(statDataActivityChangedData?.updatedAt![1], "2017-06-15T19:34:28.193Z")

    XCTAssertEqual(statDataActivityChangedData?.progressedAt![0], "2017-06-06T20:04:25.401Z")
    XCTAssertEqual(statDataActivityChangedData?.progressedAt![1], "2017-06-15T19:34:28.193Z")

    XCTAssertNil(statDataActivityChangedData?.finishedAt![0])
    XCTAssertEqual(statDataActivityChangedData?.finishedAt![1], "2017-06-15T19:34:28.192Z")
  }

  func testStatDataActivityChangedDataMissing() {
    let json = missingJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertNil(statDataActivityChangedData?.objectID)
    XCTAssertNil(statDataActivityChangedData?.status)
    XCTAssertNil(statDataActivityChangedData?.userID)
    XCTAssertNil(statDataActivityChangedData?.animeID)
    XCTAssertNil(statDataActivityChangedData?.mangaID)
    XCTAssertNil(statDataActivityChangedData?.mediaID)
    XCTAssertNil(statDataActivityChangedData?.createdAt)
    XCTAssertNil(statDataActivityChangedData?.mediaType)
    XCTAssertNil(statDataActivityChangedData?.startedAt)
    XCTAssertNil(statDataActivityChangedData?.progress)
    XCTAssertNil(statDataActivityChangedData?.updatedAt)
    XCTAssertNil(statDataActivityChangedData?.progressedAt)
    XCTAssertNil(statDataActivityChangedData?.finishedAt)
  }

  func testStatDataActivityChangedDataEmpty() {
    let json = emptyJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertEqual(statDataActivityChangedData?.objectID, [] as [Int])
    XCTAssertEqual(statDataActivityChangedData?.status, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.userID, [] as [Int])
    XCTAssertEqual(statDataActivityChangedData?.animeID, [] as [Int])
    XCTAssertEqual(statDataActivityChangedData?.mangaID, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.mediaID, [] as [Int])
    XCTAssertEqual(statDataActivityChangedData?.createdAt, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.mediaType, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.startedAt, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.progress, [] as [Int])
    XCTAssertEqual(statDataActivityChangedData?.updatedAt, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.progressedAt, [] as [String])
    XCTAssertEqual(statDataActivityChangedData?.finishedAt, [] as [String])
  }

  func testStatDataActivityChangedDataNil() {
    let json = nilJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivityChangedData = try? decoder.decode(StatDataActivityChangedData.self,
                                                        from: data!)
    } else {
      statDataActivityChangedData = nil
    }

    XCTAssertNotNil(statDataActivityChangedData)
    XCTAssertNil(statDataActivityChangedData?.objectID)
    XCTAssertNil(statDataActivityChangedData?.status)
    XCTAssertNil(statDataActivityChangedData?.userID)
    XCTAssertNil(statDataActivityChangedData?.animeID)
    XCTAssertNil(statDataActivityChangedData?.mangaID)
    XCTAssertNil(statDataActivityChangedData?.mediaID)
    XCTAssertNil(statDataActivityChangedData?.createdAt)
    XCTAssertNil(statDataActivityChangedData?.mediaType)
    XCTAssertNil(statDataActivityChangedData?.startedAt)
    XCTAssertNil(statDataActivityChangedData?.progress)
    XCTAssertNil(statDataActivityChangedData?.updatedAt)
    XCTAssertNil(statDataActivityChangedData?.progressedAt)
    XCTAssertNil(statDataActivityChangedData?.finishedAt)
  }
}
