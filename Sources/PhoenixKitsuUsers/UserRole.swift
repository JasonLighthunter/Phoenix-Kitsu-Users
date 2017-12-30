import PhoenixKitsuCore

public class UserRole: KitsuObject {
  public static var requestURLString = "user-roles"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: UserRoleAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class UserRoleAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
}
