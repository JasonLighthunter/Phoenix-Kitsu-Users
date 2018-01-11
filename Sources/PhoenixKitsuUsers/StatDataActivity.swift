public class StatDataActivity: Decodable {
  public let objectID: Int?
  public let event: String?
  public let userID: Int?
  public let animeID: Int?
  public let dramaID: Int?
  public let mangaID: Int?
  public let createdAt: String?
  public let updatedAt: String?
  public let changedData: StatDataActivityChangedData?
  public let libraryEntryID: Int?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case event
    case userID = "user_id"
    case animeID = "anime_id"
    case dramaID = "drama_id"
    case mangaID = "manga_id"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case changedData = "changed_data"
    case libraryEntryID = "library_entry_id"
  }
}
