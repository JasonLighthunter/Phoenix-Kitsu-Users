import XCTest
@testable import PhoenixKitsuUsers

class StatDataTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledAmountConsumedJSON: [String: Any?] = [
    "all_time": [:]
  ]

  let fullyFilledCategoryBreakdownJSON: [String: Any] = [
    "total": 2375,
    "total_media": 328,
    "all_categories": [:]
  ]

  let fullyFilledFavoriteYearJSON: [String: Any] = [
    "total": 328,
    "all_years": [:],
    "total_media": 328
  ]

  let fullyFilledActivityHistoryJSON: [String: Any?] = [
    "total": 4,
    "activity": []
  ]

  let validMissingDataJSON: [String: Any] = [:]

  let validNilDataJSON: [String: Any?] = [
    "total": nil,
    "total_media": nil,
    "activity": nil,
    "all_categories": nil,
    "all_time": nil,
    "all_years": nil
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

  var statData: StatData?

  override func tearDown() {
    statData = nil

    super.tearDown()
  }

  func testStatDataFullyFilledAmountConsumed() {
    let json = fullyFilledAmountConsumedJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statData = try? decoder.decode(StatData.self, from: data!)
    } else {
      statData = nil
    }

    XCTAssertNotNil(statData)

    XCTAssertNil(statData?.total)
    XCTAssertNil(statData?.totalMedia)
    XCTAssertNil(statData?.activity)
    XCTAssertNil(statData?.allCategories)

    XCTAssertNotNil(statData?.allTime)

    XCTAssertNil(statData?.allYears)
  }

  func testStatDataFullyFilledCategoryBreakdown() {
    let json = fullyFilledCategoryBreakdownJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statData = try? decoder.decode(StatData.self, from: data!)
    } else {
      statData = nil
    }

    XCTAssertNotNil(statData)

    XCTAssertEqual(statData?.total, 2375)
    XCTAssertEqual(statData?.totalMedia, 328)
    XCTAssertNil(statData?.activity)

    XCTAssertNotNil(statData?.allCategories)

    XCTAssertNil(statData?.allTime)
    XCTAssertNil(statData?.allYears)
  }

  func testStatDataFullyFilledFavoriteYear() {
    let json = fullyFilledFavoriteYearJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statData = try? decoder.decode(StatData.self, from: data!)
    } else {
      statData = nil
    }

    XCTAssertNotNil(statData)

    XCTAssertEqual(statData?.total, 328)
    XCTAssertEqual(statData?.totalMedia, 328)
    XCTAssertNil(statData?.activity)
    XCTAssertNil(statData?.allCategories)
    XCTAssertNil(statData?.allTime)

    XCTAssertNotNil(statData?.allYears)
  }

  func testStatDataFullyFilledActivityHistory() {
    let json = fullyFilledActivityHistoryJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statData = try? decoder.decode(StatData.self, from: data!)
    } else {
      statData = nil
    }

    XCTAssertNotNil(statData)

    XCTAssertEqual(statData?.total, 4)
    XCTAssertNil(statData?.totalMedia)

    XCTAssertNotNil(statData?.activity)

    XCTAssertNil(statData?.allCategories)
    XCTAssertNil(statData?.allTime)
    XCTAssertNil(statData?.allYears)
  }

  func testStatDataValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statData = try? decoder.decode(StatData.self, from: data!)
    } else {
      statData = nil
    }

    XCTAssertNotNil(statData)

    XCTAssertNil(statData?.total)
    XCTAssertNil(statData?.totalMedia)
    XCTAssertNil(statData?.activity)
    XCTAssertNil(statData?.allCategories)
    XCTAssertNil(statData?.allTime)
    XCTAssertNil(statData?.allYears)
  }

  func testStatDataValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      statData = try? decoder.decode(StatData.self, from: data!)
    } else {
      statData = nil
    }

    XCTAssertNotNil(statData)

    XCTAssertNil(statData?.total)
    XCTAssertNil(statData?.totalMedia)
    XCTAssertNil(statData?.activity)
    XCTAssertNil(statData?.allCategories)
    XCTAssertNil(statData?.allTime)
    XCTAssertNil(statData?.allYears)
  }

//  func testStatDataInvalidMissingData() {
//    let json = invalidMissingDataJSON
//
//    if JSONSerialization.isValidJSONObject(json as Any) {
//      let data = try? JSONSerialization.data(withJSONObject: json as Any)
//      statData = try? decoder.decode(StatData.self, from: data!)
//    } else {
//      statData = nil
//    }
//
//    XCTAssertNil(statData)
//  }

//  func testStatDataInvalidNilData() {
//    let json = invalidNilDataJSON
//
//    if JSONSerialization.isValidJSONObject(json as Any) {
//      let data = try? JSONSerialization.data(withJSONObject: json as Any)
//      statData = try? decoder.decode(StatData.self, from: data!)
//    } else {
//      statData = nil
//    }
//
//    XCTAssertNil(statData)
//  }
}
