import PhoenixKitsuCore

public class Stat: KitsuObject {
  public static var requestURLString = "stats"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: StatAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class StatAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let kind: StatKindEnum
  public let statsData: StatData?
}
