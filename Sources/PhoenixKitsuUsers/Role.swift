import PhoenixKitsuCore

public class Role: KitsuObject {
  public static var requestURLString = "roles"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: RoleAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class RoleAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let name: String?
  public let resourceID: String?
  public let resourceType: String?
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case name
    case resourceID = "resourceId"
    case resourceType
  }
}
