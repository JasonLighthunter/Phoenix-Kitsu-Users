import XCTest
@testable import PhoenixKitsuUsers

class StatKindEnumTests: XCTestCase {
  func testStatKindEnum() {
    XCTAssertEqual(StatKindEnum(rawValue: "anime-category-breakdown"),
                   StatKindEnum.animeCategoryBreakdown)
    XCTAssertEqual(StatKindEnum(rawValue: "manga-category-breakdown"),
                   StatKindEnum.mangaCategoryBreakdown)
    XCTAssertEqual(StatKindEnum(rawValue: "anime-activity-history"),
                   StatKindEnum.animeActivityHistory)
    XCTAssertEqual(StatKindEnum(rawValue: "manga-activity-history"),
                   StatKindEnum.mangaActivityHistory)
    XCTAssertEqual(StatKindEnum(rawValue: "anime-favorite-year"),
                   StatKindEnum.animeFavoriteYear)
    XCTAssertEqual(StatKindEnum(rawValue: "manga-favorite-year"),
                   StatKindEnum.mangaFavoriteYear)
    XCTAssertEqual(StatKindEnum(rawValue: "anime-amount-consumed"),
                   StatKindEnum.animeAmountConsumed)
    XCTAssertEqual(StatKindEnum(rawValue: "manga-amount-consumed"),
                   StatKindEnum.mangaAmountConsumed)
    XCTAssertNil(StatKindEnum(rawValue: "InvalidInput"))
  }
}
