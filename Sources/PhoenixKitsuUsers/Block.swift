import PhoenixKitsuCore

public class Block: KitsuObject {
  public static var requestURLString = "blocks"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: BlockAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class BlockAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
