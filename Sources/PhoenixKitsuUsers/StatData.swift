public class StatData: Decodable {
  public let total: Int?
  public let totalMedia: Int?
  public let activity: [StatDataActivity]?
  public let allCategories: [String : Int]?
  public let allTime: [String : Int]?
  public let allYears: [String : Int]?
  
  private enum CodingKeys: String, CodingKey {
    case total
    case totalMedia = "total_media"
    case activity
    case allCategories = "all_categories"
    case allTime = "all_time"
    case allYears = "all_years"
  }
}
