import PhoenixKitsuCore
import Requestable

public class Favorite: KitsuObject<FavoriteAttributes>, Requestable {
  public static var requestURLString = "favorites"
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
