import PhoenixKitsuCore

public class Favorite: KitsuObject {
  public static var requestURLString = "favorites"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: FavoriteAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class FavoriteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let favoritesRank: Int
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case favoritesRank = "favRank"
  }
}
