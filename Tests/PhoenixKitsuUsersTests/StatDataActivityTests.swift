import XCTest
@testable import PhoenixKitsuUsers

class StatDataActivityTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any?] = [
    "id": 2081224,
    "event": "updated",
    "user_id": 634,
    "anime_id": nil,
    "drama_id": nil,
    "manga_id": 26193,
    "created_at": "2017-08-16T13:00:26.784Z",
    "updated_at": "2017-08-16T13:00:26.784Z",
    "changed_data": [:],
    "library_entry_id": 15377956
  ]

  let validMissingDataJSON: [String: Any] = [:]

  let validNilDataJSON: [String: Any?] = [
    "id": nil,
    "event": nil,
    "user_id": nil,
    "anime_id": nil,
    "drama_id": nil,
    "manga_id": nil,
    "created_at": nil,
    "updated_at": nil,
    "changed_data": nil,
    "library_entry_id": nil
  ]

  //  let invalidMissingDataJSON: [String : Any] = [:]

  //  let invalidNilDataJSON: [String : Any?] = [
  //    "id": nil,
  //    "event": nil,
  //    "user_id": nil,
  //    "anime_id": nil,
  //    "drama_id": nil,
  //    "manga_id": nil,
  //    "created_at": nil,
  //    "updated_at": nil,
  //    "changed_data": nil,
  //    "library_entry_id": nil
  //  ]

  var statDataActivity: StatDataActivity?

  override func tearDown() {
    statDataActivity = nil

    super.tearDown()
  }

  func testStatDataActivityFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivity = try? decoder.decode(StatDataActivity.self, from: data!)
    } else {
      statDataActivity = nil
    }

    XCTAssertNotNil(statDataActivity)

    XCTAssertEqual(statDataActivity?.objectID, 2081224)
    XCTAssertEqual(statDataActivity?.event, "updated")
    XCTAssertEqual(statDataActivity?.userID, 634)
    XCTAssertNil(statDataActivity?.animeID)
    XCTAssertNil(statDataActivity?.dramaID)
    XCTAssertEqual(statDataActivity?.mangaID, 26193)
    XCTAssertEqual(statDataActivity?.createdAt, "2017-08-16T13:00:26.784Z")
    XCTAssertEqual(statDataActivity?.updatedAt, "2017-08-16T13:00:26.784Z")

    XCTAssertNotNil(statDataActivity?.changedData)

    XCTAssertEqual(statDataActivity?.libraryEntryID, 15377956)
  }

  func testStatDataActivityValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivity = try? decoder.decode(StatDataActivity.self, from: data!)
    } else {
      statDataActivity = nil
    }

    XCTAssertNotNil(statDataActivity)

    XCTAssertNil(statDataActivity?.objectID)
    XCTAssertNil(statDataActivity?.event)
    XCTAssertNil(statDataActivity?.userID)
    XCTAssertNil(statDataActivity?.animeID)
    XCTAssertNil(statDataActivity?.dramaID)
    XCTAssertNil(statDataActivity?.mangaID)
    XCTAssertNil(statDataActivity?.createdAt)
    XCTAssertNil(statDataActivity?.updatedAt)
    XCTAssertNil(statDataActivity?.changedData)
    XCTAssertNil(statDataActivity?.libraryEntryID)
  }

  func testStatDataActivityValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statDataActivity = try? decoder.decode(StatDataActivity.self, from: data!)
    } else {
      statDataActivity = nil
    }

    XCTAssertNotNil(statDataActivity)

    XCTAssertNil(statDataActivity?.objectID)
    XCTAssertNil(statDataActivity?.event)
    XCTAssertNil(statDataActivity?.userID)
    XCTAssertNil(statDataActivity?.animeID)
    XCTAssertNil(statDataActivity?.dramaID)
    XCTAssertNil(statDataActivity?.mangaID)
    XCTAssertNil(statDataActivity?.createdAt)
    XCTAssertNil(statDataActivity?.updatedAt)
    XCTAssertNil(statDataActivity?.changedData)
    XCTAssertNil(statDataActivity?.libraryEntryID)
  }

  //  func testStatDataActivityInvalidMissingData() {
  //    let json = invalidMissingDataJSON
  //
  //    if JSONSerialization.isValidJSONObject(json as Any) {
  //      let data = try? JSONSerialization.data(withJSONObject: json as Any)
  //      statDataActivity = try? decoder.decode(StatDataActivity.self, from: data!)
  //    } else {
  //      statDataActivity = nil
  //    }
  //
  //    XCTAssertNil(statDataActivity)
  //  }

  //  func testStatDataActivityInvalidNilData() {
  //    let json = invalidNilDataJSON
  //
  //    if JSONSerialization.isValidJSONObject(json as Any) {
  //      let data = try? JSONSerialization.data(withJSONObject: json as Any)
  //      statDataActivity = try? decoder.decode(StatDataActivity.self, from: data!)
  //    } else {
  //      statDataActivity = nil
  //    }
  //
  //    XCTAssertNil(statDataActivity)
  //  }
}
