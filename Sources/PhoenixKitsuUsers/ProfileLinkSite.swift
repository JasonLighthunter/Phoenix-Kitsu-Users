import PhoenixKitsuCore

public class ProfileLinkSite: KitsuObject {
  public static var requestURLString = "profile-link-sites"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: ProfileLinkSiteAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class ProfileLinkSiteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let name: String
}
