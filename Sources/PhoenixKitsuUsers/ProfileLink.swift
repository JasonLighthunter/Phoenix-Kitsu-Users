import PhoenixKitsuCore

public class ProfileLink: KitsuObject {
  public static var requestURLString = "profile-links"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: ProfileLinkAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class ProfileLinkAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let url: String
}
