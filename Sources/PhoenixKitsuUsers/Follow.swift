import PhoenixKitsuCore

public class Follow: KitsuObject {
  public static var requestURLString = "follows"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: FollowAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class FollowAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
