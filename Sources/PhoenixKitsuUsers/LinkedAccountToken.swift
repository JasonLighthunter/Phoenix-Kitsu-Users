public struct LinkedAccountToken: Decodable {
  public let resourceOwnerID: Int
  public let scopes: [String]
  public let expiresInSeconds: Int
  public let application: LinkedAccountTokenApplication?
  public let createdAt: Int

  private enum CodingKeys: String, CodingKey {
    case resourceOwnerID = "resource_owner_id"
    case scopes
    case expiresInSeconds = "expires_in_seconds"
    case application
    case createdAt = "created_at"
  }
}
