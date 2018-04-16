public struct StatDataActivityChangedData: Decodable {
  public let objectID: [Int?]?
  public let status: [String?]?
  public let userID: [Int?]?
  public let animeID: [Int?]?
  public let mangaID: [String?]?
  public let mediaID: [Int?]?
  public let createdAt: [String?]?
  public let mediaType: [String?]?
  public let startedAt: [String?]?
  public let progress: [Int?]?
  public let updatedAt: [String?]?
  public let progressedAt: [String?]?
  public let finishedAt: [String?]?

  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case status
    case userID = "user_id"
    case animeID = "anime_id"
    case mangaID = "manga_id"
    case mediaID = "media_id"
    case createdAt = "created_at"
    case mediaType = "media_type"
    case startedAt = "started_at"
    case progress
    case updatedAt = "updated_at"
    case progressedAt = "progressed_at"
    case finishedAt = "finished_at"
  }
}
